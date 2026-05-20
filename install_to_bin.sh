#!/bin/bash
echo "[i] We will now install Network Stress Tester to your bin path..."
if [ -d "/usr/share/nst" ] ; then
    echo "[i] Found an old version of Network Stress Tester, proceeding to update..."
    echo "[i] Backing up old version."
    if [ -d "/usr/share/nst/Backup" ] ; then
        sudo mv /usr/share/nst/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/nst"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/nst $name
    mv ./Backup ./nst/
    sudo cp -ar ./nst /usr/share/
    echo "[i] Installation successful."
    echo "[i] Making Network Stress Tester executable..."
    sudo mv /usr/share/nst/main.py /usr/share/nst/nst
    sudo chmod +x /usr/share/nst/nst
    sudo ln -s /usr/share/nst/nst /usr/bin/nst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./nst /usr/share/
    echo "[i] Installation successful."
    echo "[i] Making Network Stress Tester executable..."
    sudo mv /usr/share/nst/main.py /usr/share/nst/nst
    sudo chmod +x /usr/share/nst/nst
    sudo ln -s /usr/share/nst/nst /usr/bin/nst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the nst folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo nst' to start Network Stress Tester."
echo "----------------------------------------"
exit 0
