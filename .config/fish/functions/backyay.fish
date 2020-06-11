# Defined in - @ line 1
function backyay --description 'alias backyay=yay -Qqe >> ~/.config/installed_packet'
	yay -Qqe > ~/.config/installed_packet $argv;
end
