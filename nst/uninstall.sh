#!/bin/bash
echo "[i] We will now uninstall Network Stress Tester..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/nst
sudo rm -rf -i /usr/share/nst

echo "[i] Network Stress Tester successfully uninstalled."
exit 0
