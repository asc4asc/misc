# misc (sorry German/Englisch mix :-( )

Some scripts an notes for quick use in my linux debian projects. 

# Idea:
clone than copy to bin select one of:
* /user/local/bin
* /user/local/sbin
* $HOME/bin (create bin!)
* /root/bin ??????


# Ideen für Test@EKF
* Netzwerk boot test mit FAI in seperatem VLAN!
* Schön wäre wenn man auch seperate FAI Server schnell bereitstellen könnte.
* debian live mit boot toram als schneller Test. 

# Ideen für FAI
* kleinere Files um besser debuggen zu können.
* zusätzliche sripte über github bereitstellen um halb fertiges zu unterstützen.
* Um einfacher in scripten mit dem Netz umzugehen will ich GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0" nutzen. Speziell in virtuellen Maschinen macht das Sinn.
* Um ein einfachen login an der Konsole zu bekommen kann man diese tool benutzen: - sudo ./make-auto-login-console ${USER} - Auch sinnvoll wenn man kein Passwort im source moechte. Alternativ ein login per ssh mit key erlauben.
  
