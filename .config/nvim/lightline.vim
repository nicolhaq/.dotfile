let g:lightline = {
	\'colorscheme': 'base16_material_darker',
	\'active': {
	\  'left': [ [ 'mode', 'paste' ],
	\     ['diagnostic','cocstatus', 'readonly', 'filename', 'gitbranch']
	\  ],
	\  'right':[
	\     ['filetype', 'fileencoding', 'lineinfo', 'percent' ]
	\  ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'gitbranch': 'LightlineGitStatus',
	\   'filename' : 'LightlineFileName'
	\ }
	\ }

function! LightlineFileName()
	let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
	let modified = &modified ? ' +' : ''
	return filename . modified
endfunction

function! LightlineGitStatus()
	let branch = get(g:, 'coc_git_status', '')
	let status = get(b:, 'coc_git_status', '')
	return branch . status
endfunction
