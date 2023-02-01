#!/bin/bash
# Made by Sam Wattoo
# Copyright WapKiz Ltd
# Version: 1.1 
echo "Lets start..."
# Let's install the EL file manager hestia UI!  
function hestiawpinstaller() { 
echo "hestiaCP Installing EL file manager...." 
cd /usr/local/hestia/web/list
wget https://raw.githubusercontent.com/leopkks/vestacp-or-hestiacp-file-manager/raw/main/file_manager.tar -O elfm.tar
tar -xf elfm.tar
rm -rf elfm.tar
# Add the link to the panel.html file 
if grep -q 'elfm' /usr/local/hestia/web/templates/admin/panel.html; then
		echo 'Already there.'
	else 
sed -i '/<div class="l-menu clearfix noselect">/a <div class="l-menu__item <?php if($TAB == "elfm" ) echo "l-menu__item--active"; ?>"><a href="/list/elfm/" target="_blank"><?=__("El FM")?></a></div>' /usr/local/hestia/web/templates/admin/panel.html;
fi
echo "Done! Check hestiaCP!" 
}
hestiawpinstaller