# Network Stress Tester

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.8+-blue?style=for-the-badge&logo=python">
  <img src="https://img.shields.io/badge/Platform-Linux%20%7C%20macOS-lightgrey?style=for-the-badge">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge">
  <img src="https://img.shields.io/badge/Version-1.0-red?style=for-the-badge">
  <img src="https://img.shields.io/badge/Purpose-Ethical%20Hacking-orange?style=for-the-badge">
</p>

<p align="center">
  A powerful network stress testing toolkit for <strong>authorised penetration testing</strong> and <strong>academic research</strong>, written in Python 3.
</p>

---

## What is Network Stress Tester?

Network Stress Tester is a command-line tool that sends high-volume network traffic to a target to measure how much load it can handle. It supports two attack modes:

| Module | Layer | Protocol | Use Case |
|--------|-------|----------|----------|
| `l4` | Layer 4 — Transport | TCP / UDP | Test raw server/service capacity |
| `l7` | Layer 7 — Application | HTTP | Test web server capacity |

> **For educational and authorised testing only. Using this tool against systems you do not own or have explicit permission to test is illegal.**

---

## Features

- **L4 TCP/UDP Flood** — raw socket-based flood with configurable threads, ports, and packet delay
- **L7 HTTP Flood** — HTTP GET flood with randomised User-Agent spoofing to simulate real browser traffic
- **Multi-target support** — attack multiple IPs/URLs simultaneously
- **Automation** — configurable auto-start, auto-stop, and thread step delays
- **Distributed mode** — connect multiple machines together for coordinated testing
- **Debug logging** — save detailed attack logs to file
- **Interactive CLI** — clean shell interface with tab-completion support

---

## Requirements

- Python 3.8 or higher
- Linux or macOS (Windows via WSL)
- `pip3`

---

## Installation

### Option 1 — One-line installer (Linux)

```bash
curl -s https://raw.githubusercontent.com/eve-dsr/network-stress-tester/main/install.sh | sudo bash -s
```

This installs all dependencies and the tool automatically. Run it with:

```bash
sudo nst
```

### Option 2 — Manual (Linux / macOS / WSL)

```bash
# Clone the repo
git clone https://github.com/eve-dsr/network-stress-tester.git
cd network-stress-tester

# Install dependencies
pip3 install -r requirements.txt

# Run
python3 main.py
```

### Option 3 — Download ZIP

Click **Code → Download ZIP** at the top of this page, extract it, then run:

```bash
pip3 install -r requirements.txt
python3 main.py
```

---

## Usage

### Start the tool

```bash
python3 main.py
```

You will see the main prompt `>>`. Type `help` to see all commands.

---

### L4 — TCP/UDP Flood

Type `l4` at the main prompt to enter the Layer 4 module (`L4>`).

```
L4> ip 192.168.1.1        # set target IP
L4> port 80               # set target port
L4> threads 200           # number of simultaneous threads
L4> method                # toggle between TCP and UDP
L4> run                   # start the attack
```

**All L4 commands:**

| Command | Description |
|---------|-------------|
| `ip <address>` | Set a single target IP |
| `ips <a>, <b>` | Set multiple target IPs (comma separated) |
| `web <domain>` | Resolve domain to IP via DNS and set as target |
| `webs <a>, <b>` | Resolve and set multiple domains |
| `port <number>` | Set target port |
| `ports <a>, <b>` | Set multiple ports |
| `threads <n>` | Number of concurrent threads (default: 160) |
| `method` | Toggle TCP / UDP |
| `sleep <n>` | Delay in seconds between packets |
| `outtxt` | Toggle verbose output on/off |
| `auto start <n>` | Wait N seconds before starting |
| `auto stop <n>` | Stop automatically after N seconds |
| `auto step <n>` | Delay between launching each thread |
| `values` / `ls` | Show all current settings |
| `run` | Start the attack |
| `debug` | Enable debug logging |

---

### L7 — HTTP Flood

Type `l7` at the main prompt to enter the Layer 7 module (`L7>`).

```
L7> target http://192.168.1.1    # set target URL
L7> threads 400                   # number of threads
L7> run                           # start the attack
```

**All L7 commands:**

| Command | Description |
|---------|-------------|
| `target <url>` | Set a single target URL |
| `targets <a>, <b>` | Set multiple target URLs |
| `threads <n>` | Number of concurrent threads (default: 400) |
| `sleep <n>` | Delay between launching each thread |
| `interval <n>` | Delay between each HTTP request per thread |
| `values` / `ls` | Show all current settings |
| `run` | Start the attack |
| `debug` | Enable debug logging |

---

### Distributed / DDoS Mode

Connect multiple machines together to run a coordinated attack.

**On the host machine:**
```
>> server        # starts a coordination server, gives you a URL
```

**On each client machine:**
```bash
python3 main.py --connect <host-url> <password>
```

Clients will automatically receive and execute commands from the host.

---

## Uninstall

If installed to bin path:
```bash
sudo bash /usr/share/nst/uninstall.sh
```

---

## Project Structure

```
network-stress-tester/
├── main.py                     # Entry point
├── requirements.txt            # Python dependencies
├── install.sh                  # Auto-installer (Linux/macOS)
├── install_to_bin.sh           # Install to /usr/bin/nst
└── nst/
    ├── main.py                 # App bootstrap
    ├── uninstall.sh
    ├── CLIF_Framework/
    │   └── framework.py        # Custom CLI engine
    └── modules/
        ├── main.py             # Main menu shell
        ├── l4/main.py          # Layer 4 TCP/UDP flood
        └── l7/main.py          # Layer 7 HTTP flood
```

---

## Legal & Ethical Use

This tool is intended **only** for:
- Testing networks and servers **you own**
- Authorised penetration testing engagements (with written permission)
- Academic research and education in controlled lab environments

Using this tool against systems without authorisation is a criminal offence under:
- **India** — IT Act 2000, Section 66
- **USA** — Computer Fraud and Abuse Act (CFAA)
- **EU** — Directive on Attacks Against Information Systems

The author takes no responsibility for misuse. By using this software, you accept full responsibility for any damage caused.

---

## License

MIT License — see [LICENSE](LICENSE) for details.

---

## Author

**Sandeep** — BTech Final Year Project  
GitHub: [@eve-dsr](https://github.com/eve-dsr)  
Email: asandeep486@gmail.com
