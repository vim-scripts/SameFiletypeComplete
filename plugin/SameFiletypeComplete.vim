" SameFiletypeComplete.vim: Insert mode completion from buffers with the same filetype.
"
" DEPENDENCIES:
"   - Requires Vim 7.0 or higher.
"   - SameFiletypeComplete.vim autoload script
"
" Copyright: (C) 2012 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   1.00.001	27-Sep-2012	file creation

" Avoid installing twice or when in unsupported Vim version.
if exists('g:loaded_SameFiletypeComplete') || (v:version < 700)
    finish
endif
let g:loaded_SameFiletypeComplete = 1

"- configuration ---------------------------------------------------------------

if ! exists('g:SameFiletypeComplete_complete')
    let g:SameFiletypeComplete_complete = '.,w,b'
endif


"- mappings --------------------------------------------------------------------

inoremap <silent> <expr> <Plug>(SameFiletypeComplete) SameFiletypeComplete#Expr()
if ! hasmapto('<Plug>(SameFiletypeComplete)', 'i')
    imap <C-x>= <Plug>(SameFiletypeComplete)
endif

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
