# Network Stress Tester

<img src="https://img.shields.io/badge/Python-3.8-blue"> <img src="https://img.shields.io/badge/Status-Beta-orange"> <img src="https://img.shields.io/badge/Version-4-red"> <img src="https://img.shields.io/badge/Licence-MIT-yellowgreen">

**Network Stress Tester is a powerful toolkit for penetration testing, including stress-test attacks for several protocols written in Python 3.8.**

Takedown WiFi access points, devices in your network, servers, and services with ease.

Network Stress Tester is designed to help you **test, understand, and learn from stress-testing** attacks.

## What makes it different

- [x] Includes tools for creating shortcuts and working more efficiently.
- [x] **Effective** and **powerful** in stress-testing hosts and servers.
- [x] **Testing** and understanding are the primary goals.
- [x] Lets you connect clients together to create a distributed attack.
- [x] Features different protocols such as UDP/TCP and HTTP.

## Installation

Enter the following line to install on Linux:

```bash
curl -s https://raw.githubusercontent.com/eve-dsr/network-stress-tester/main/install.sh | sudo bash -s
```

Or clone and run manually:

```bash
git clone https://github.com/eve-dsr/network-stress-tester.git
cd network-stress-tester
pip3 install -r requirements.txt
python3 main.py
```

## What module to use

| Method        | Module |
| ------------- | ------ |
| udp/tcp flood | l4     |
| http flood    | l7     |

*Try using the L4 attack if L7 fails.*

## How to run a distributed attack

A DoS attack is run by a single machine; a DDoS attack runs across multiple machines.

To connect multiple instances, execute the `server` command and define a custom password to prevent others from interfering. You will receive a URL that other instances can connect to using the `ddos` command.

## Info and Warning

**THE CREATOR OF NETWORK STRESS TESTER DOES NOT TAKE ANY RESPONSIBILITY FOR DAMAGE CAUSED. THE USER ALONE IS RESPONSIBLE, WHETHER FROM ABUSING THIS TOOL FOR ILLEGAL PURPOSES OR ACCIDENTAL DAMAGE.**

**THIS TOOL IS INTENDED ONLY FOR AUTHORISED PENETRATION TESTING, ACADEMIC RESEARCH, AND EDUCATIONAL PURPOSES. USING IT AGAINST SYSTEMS YOU DO NOT OWN OR HAVE EXPLICIT PERMISSION TO TEST IS ILLEGAL.**

**BY USING THIS SOFTWARE, YOU MUST AGREE TO TAKE FULL RESPONSIBILITY FOR ANY DAMAGE CAUSED.**

**THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.**

## Uninstall

```bash
sudo bash /usr/share/nst/uninstall.sh
```
