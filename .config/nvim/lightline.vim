let g:lightline = {
	\'colorscheme': 'base16_material_darker',
	\'active': {
	\  'left': [ [ 'mode', 'paste' ],
	\     ['diagnostic','cocstatus', 'readonly', 'filename', 'gitbranch']
	\  ],
	\  'right':[
	\     ['modified', 'filetype', 'fileencoding', 'lineinfo', 'percent' ]
	\  ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'gitbranch': 'LightlineGitStatus'
	\ }
	\ }

function! LightlineGitStatus() abort
	let status = get(g:, 'coc_git_status', '')
	return status
endfunction


