---
title: Network Testing
description: Network Testing and Speed Testing beyond the phone.
type: Resource
topic:
  - Speedtesting
  - Networking
category: Info Tech
created_at: 2025-02-06T13:13:56-05:00
modified_at: 2025-02-06T13:15:19-05:00
---
# Speedtest & Network Testing

Network speed and performance are critical for diagnosing issues, ensuring stable connections, and verifying ISP claims. Below are tools and commands to measure network speed, test latency, and analyze bandwidth usage.

## Speedtest

### Install Speedtest (asheroto)

asheroto’s Speedtest CLI is a lightweight, no-bloat alternative for testing internet speeds.

#### **Installation**

```bash
curl -fsSL https://github.com/asheroto/speedtest/raw/main/install.sh | bash
```

#### **Run a Speedtest**

```bash
speedtest
```

#### **Run Speedtest with JSON Output**

```bash
speedtest --json
```

#### **Run Speedtest with Detailed Metrics**

```bash
speedtest --verbose
```

#### **Run Speedtest and Save to a File**

```bash
speedtest | tee speedtest_results.txt
```

### Alternative: Ookla’s Speedtest CLI

#### **Install Ookla Speedtest CLI**

```bash
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt install speedtest
```

#### **Run Ookla’s Speedtest**

```bash
speedtest
```

#### **Select a Specific Server**

```bash
speedtest -s <server_id>
```

(Find server ID using `speedtest -L`)

## Network Performance Tools

### **Ping – Check Latency to a Host**

```bash
ping -c 10 google.com
```

- `-c 10` → Send 10 pings
- Useful for checking response time and packet loss

### **Traceroute – Trace Network Route**

```bash
traceroute google.com
```

- Shows the path packets take to reach a destination

### **MTR – Continuous Network Path Testing**

```bash
mtr google.com
```

- Combines ping and traceroute into a live diagnostic tool

### **iPerf – Advanced Bandwidth Testing**

#### **Install iPerf**

```bash
sudo apt install iperf3  # Ubuntu/Debian
brew install iperf3  # macOS
```

#### **Run iPerf as Server**

```bash
iperf3 -s
```

#### **Run iPerf as Client**

```bash
iperf3 -c <server_ip>
```

#### **Test UDP instead of TCP**

```bash
iperf3 -u -c <server_ip> -b 100M
```

- `-u` → Use UDP
- `-b 100M` → Test at 100 Mbps

### **Netstat – Active Network Connections**

```bash
netstat -tulnp
```

- `-t` → TCP connections
- `-u` → UDP connections
- `-l` → Listening ports
- `-n` → Show numeric addresses
- `-p` → Show process using the connection

### **SS – Faster Alternative to Netstat**

```bash
ss -tulnp
```

- More efficient way to inspect network sockets

### **DNS Speed Testing – Resolve Domains Faster**

#### **Check DNS Lookup Time**

```bash
time dig google.com
```

#### **Compare Different DNS Resolvers**

```bash
nslookup google.com 8.8.8.8  # Google DNS
nslookup google.com 1.1.1.1  # Cloudflare DNS
```

#### **Test DNS Over HTTPS (DoH) Latency**

```bash
curl -s -w '%{time_total}\n' -o /dev/null https://cloudflare-dns.com/dns-query
```

## Links

- [Releases · asheroto/speedtest](https://github.com/asheroto/speedtest/releases)
- [Ookla Speedtest CLI](https://www.speedtest.net/apps/cli)
- [iPerf3 Official](https://iperf.fr/)
- [MTR Network Troubleshooting](https://github.com/traviscross/mtr)

---

This expands your original note into a full reference for network testing, adding multiple tools for different scenarios. Let me know if you want any tweaks! 🚀