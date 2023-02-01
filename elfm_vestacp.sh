#!/bin/bash
# Made by Sam Wattoo
# Copyright WapKiz Ltd
# Version: 1.1 
echo "Lets start..."
# Let's install the EL file manager Vesta UI!  
function Vestawpinstaller() { 
echo "VestaCP Installing EL file manager...." 
cd /usr/local/vesta/web/list
wget https://raw.githubusercontent.com/leopkks/vestacp-or-hestiacp-file-manager/raw/main/file_manager.tar -O elfm.tar
tar -xf elfm.tar
rm -rf elfm.tar
# Add the link to the panel.html file 
if grep -q 'elfm' /usr/local/vesta/web/templates/admin/panel.html; then
		echo 'Already there.'
	else 
sed -i '/<div class="l-menu clearfix noselect">/a <div class="l-menu__item <?php if($TAB == "elfm" ) echo "l-menu__item--active"; ?>"><a href="/list/elfm/" target="_blank"><?=__("El FM")?></a></div>' /usr/local/vesta/web/templates/admin/panel.html;
fi
echo "Done! Check VestaCP!" 
}
Vestawpinstaller