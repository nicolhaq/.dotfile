let g:lightline = {
	\'colorscheme': 'base16_material_darker',
	\'active': {
	\  'left': [ [ 'mode', 'paste' ],
	\     [ 'gitbranch', 'diagnostic','cocstatus', 'readonly', 'filename', 'modified', ]
	\  ],
	\  'right':[
	\     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ]
	\  ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status',
	\   'gitbranch': 'fugitive#head'
	\ }
	\ }
