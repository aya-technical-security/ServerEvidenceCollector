# ServerEvidenceCollector

Windows Server / Windows PC 向けの証跡自動取得ツールです。

PowerShell を利用して、構成情報・監査情報・設定情報を自動収集し、テキスト形式で出力します。

---

# Features

- OS information
- Installed software
- Hotfix information
- Disk information
- Network configuration
- DNS settings
- Firewall profiles
- Local users
- Services
- Event logs

---

# Usage

## Run

Right click:

```txt
run_sec.bat
```

↓

```txt
Run as Administrator
```

---

# Output

```txt
output/evidence_DESKTOP-XXXX.txt
```

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

# Security Notice

Generated evidence files may contain:

- Hostnames
- IP addresses
- Installed software
- Local user information

Do NOT publish generated evidence files.

---

# Future Plans

- JSON policy validation
- HTML report generation
- Multi-server support
- Remote collection support

---

# Technologies

- PowerShell
- Git
- GitHub
- JSON