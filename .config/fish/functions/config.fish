# Defined in - @ line 1
function config --description 'alias config=/usr/bin/git --git-dir=/home/grolash/.dotfile/ --work-tree=/home/grolash'
	/usr/bin/git --git-dir=/home/grolash/.dotfile/ --work-tree=/home/grolash $argv;
end
