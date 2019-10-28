let g:lightline = {
	\'colorscheme': 'base16_material_darker',
	\'active': {
	\  'left': [ [ 'mode', 'paste' ],
	\     [ 'ctrlpmark',  'git', 'diagnostic','cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ]
	\  ],
	\  'right':[
	\     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
	\     [ 'blame']
	\  ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction',
	\   'blame': 'LightlineGitBlame',
	\ }
	\ }

function! CocCurrentFunction()
	return get(b:, 'coc_current_function', '')
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction
