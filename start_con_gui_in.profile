#!/bin/bash
# put this into .profile? 
[ $(tty) == /dev/tty1 ] && run-parts autostart.dir/
[ $(tty) == /dev/pts/0 ] && run-parts autostart.dir/

echo '# [ $(tty) == /dev/tty1 ] && run-parts autostart.dir/' >> ${HOME}/.profile
echo '# [ $(tty) == /dev/pts/0 ] && run-parts autostart.dir/' >> ${HOME}/.profile


