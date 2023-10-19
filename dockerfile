DO debian

EXECUTAR dpkg --add-architecture i386

EXECUTAR atualização adequada

EXECUTAR DEBIAN_FRONTEND=não interativo apt instalar vinho qemu-kvm *zenhei* xz-utils dbus-x11 curl firefox-esr gnome-system-monitor mate-system-monitor git xfce4 xfce4-terminal tightvncserver wget -y

EXECUTAR wget https://github.com/novnc/noVNC/archive/refs/tags/v1.2.0.tar.gz

EXECUTAR tar -xvf v1.2.0.tar.gz

EXECUTAR mkdir $HOME/.vnc

EXECUTAR echo 'Sophia' | vncpasswd -f > $HOME/.vnc/passwd

EXECUTAR echo '/bin/env MOZ_FAKE_NO_SANDBOX=1 dbus-launch xfce4-session' > $HOME/.vnc/xstartup

EXECUTAR chmod 600 $HOME/.vnc/passwd

EXECUTAR chmod 755 $HOME/.vnc/xstartup

EXECUTAR echo 'whoami' >>/Sophia.sh

EXECUTAR echo 'cd' >>/Sophia.sh

EXECUTAR echo "su -l -c 'vncserver:2000 -geometry 1360x768' " >>/Sophia.sh

EXECUTAR echo 'cd /noVNC-1.2.0' >>/Sophia.sh

EXECUTAR echo './utils/launch.sh --vnc localhost:7900 --listen 8900 ' >>/Sophia.sh

EXECUTAR chmod 755 /Sophia.sh

EXPOSIÇÃO 8900

CMD /Sophia.sh
