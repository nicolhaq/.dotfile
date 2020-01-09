# Defined in - @ line 1
function echo --description 'alias echo=echo -e'
	builtin echo -e $argv;
end
