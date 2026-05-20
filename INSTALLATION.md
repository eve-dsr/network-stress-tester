# Network Stress Tester — Installation Guide

## Quick Install (Linux)

```bash
curl -s https://raw.githubusercontent.com/eve-dsr/network-stress-tester/main/install.sh | sudo bash -s
```

## Manual Install

1. Install dependencies: `git`, `python3`, `python3-pip`
2. Clone the repository:

```bash
git clone https://github.com/eve-dsr/network-stress-tester.git
```

3. Enter the directory:

```bash
cd network-stress-tester
```

4. Install Python requirements:

```bash
pip3 install -r requirements.txt
```

5. Run Network Stress Tester:

```bash
python3 main.py
```

## Install to bin path (Linux)

```bash
sudo bash install_to_bin.sh
```

Then run with:

```bash
sudo nst
```

## Other operating systems

Unix-based systems (Linux and macOS) run Network Stress Tester natively.

For Windows, run under WSL (Windows Subsystem for Linux) — not every module will work natively on Windows.

## Uninstall

```bash
sudo bash /usr/share/nst/uninstall.sh
```
