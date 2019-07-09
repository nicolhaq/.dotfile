function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
	\'colorscheme': 'base16_material_darker',
	\'active': {
	\  'left': [ [ 'mode', 'paste' ],
	\     [  'git', 'diagnostic','cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ]
	\  ],
	\  'right':[
	\     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ]
	\  ]
	\},
	\'component_function': {
	\   'cocstatus': 'coc#status',
	\   'currentfunction': 'CocCurrentFunction'
	\ },
	\ }
