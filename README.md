# ServerEvidenceCollector

Windows Server / Windows PC 向けの証跡自動取得ツールです。

PowerShell を利用して、サーバーや端末の構成情報・設定情報・監査情報を自動収集し、テキスト形式で出力します。

---

# Features

## Automatically Collects

- OS information
- Installed software
- Hotfix information
- Disk information
- Volume information
- Network configuration
- DNS settings
- Firewall profiles
- Local users
- Service list
- Event logs

---

# Directory Structure

```txt
ServerEvidenceCollector/
├─ .gitignore
├─ config.json
├─ run_sec.bat
├─ sec.ps1
└─ output/
```

---

# Usage

## 1. Download

Download ZIP from GitHub.

```txt
Code → Download ZIP
```

---

## 2. Extract

Extract the ZIP file.

---

## 3. Run

Right click:

```txt
run_sec.bat
```

and select:

```txt
Run as Administrator
```

---

# Output

After execution, an output folder is automatically generated.

```txt
output/
```

Example:

```txt
output/evidence_DESKTOP-XXXX_20260524.txt
```

---

# Example Output

```txt
==================================================
[OS Information]
==================================================

WindowsProductName : Windows Server 2022
OsBuildNumber      : 20348
OsArchitecture     : 64-bit

==================================================
[Firewall Profile]
==================================================

Name     : Domain
Enabled  : True
```

---

# Security Notice

Generated evidence files may contain:

- Hostnames
- Usernames
- Installed software
- IP addresses
- DNS settings

Do NOT publish generated evidence files.

---

# Current Capabilities

- Single server evidence collection
- PowerShell-based execution
- Automatic text report generation
- GitHub-managed source control

---

# Future Plans

- JSON-based policy validation
- OK / WARN / FAIL evaluation
- HTML report generation
- CSV export
- Multi-server support
- Remote collection support

---

# Technologies Used

- PowerShell
- Git
- GitHub
- JSON

---

# Author

Aya Nishimura

Infrastructure / Security Engineer

### Skills

- Windows Server
- Linux
- VMware / ESXi
- Zabbix
- Monitoring
- Security
- Network Infrastructure