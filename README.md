# misc (sorry German/Englisch mix :-( )

Some scripts an notes for quick use in my linux debian projects. 

# Idea:
clone than copy to bin select one of:
* /usr/local/bin
* /usr/local/sbin
* $HOME/bin (create bin!)
* /root/bin ??????

# Ideen für Test/Hardware (intern)
* Netzwerk boot test mit FAI in seperatem VLAN!
* Schön wäre wenn man auch seperate FAI Server schnell bereitstellen könnte.
* debian live mit boot toram als schneller Test.
* Die clients können per ssh/ansible gemanaged werden. Und sollten sich beim managed Server melden das Sie gemanaged werden möchten. 

# Ideen für FAI
* kleinere Files um besser debuggen zu können.
* zusätzliche sripte über github bereitstellen um halb fertiges zu unterstützen.
* Um einfacher in scripten mit dem Netz umzugehen will ich GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0" nutzen. Speziell in virtuellen Maschinen macht das Sinn.
* Um ein einfachen login an der Konsole zu bekommen kann man diese tool benutzen: - sudo ./make-auto-login-console ${USER} - Auch sinnvoll wenn man kein Passwort im source moechte. Alternativ ein login per ssh mit key erlauben.
  
# ssh / Aufgabe
* den ssh pub key fom server und/oder git-hub/lab in das file ./ssh/autoisised keys im Zielrechner transportieren. z.b id_rsa.pub --> authorized_keys
  Test; cp $HOME/.ssh/id_rsa.pub $HOME/.ssh/authorized_keys -> dann sollte ssh localhost ohne password gehen.
* den key des servers known_hosts auf den client (sicher?) transportieren.
  
# Branches?:
* main # Kontrolle mit dem Original
* original-fai-conf # Das original mit dem ich gestartet bin.
* check # nur mal um was auszuprobieren
* router # Hier sollten zwei Interfaces mit masq .... für ein neues Netz gebaut werden. Zusammenspiel mit faiserver so einfach wie möglich.
* min4debian? # idee um Struktur zu verbessern
* max_min? # sollte ein sehr einfaches aber installiertes System ergeben.
