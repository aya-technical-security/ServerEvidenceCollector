# 🛡️ ServerEvidenceCollector

> Windows Server の構成情報・監査情報を  
> 自動取得する PowerShell ベースの証跡収集ツール

---

## ⚡ Features

<table>
<tr>
<td>

### 🔍 構成情報取得

- OS情報
- Hotfix
- Disk情報
- Volume情報

</td>
<td>

### 🌐 ネットワーク情報

- IP設定
- DNS
- Firewall
- Adapter情報

</td>
</tr>

<tr>
<td>

### 👤 ユーザー情報

- LocalUser
- Service一覧

</td>
<td>

### 📄 ログ取得

- System Log
- Application Log

</td>
</tr>
</table>

---

## 🖥️ 実行イメージ

```txt
run_sec.bat
↓
PowerShell 実行
↓
output/evidence_DESKTOP-XXXX.txt
```

---

## 📁 Directory

```txt
ServerEvidenceCollector/
├─ config.json
├─ run_sec.bat
├─ sec.ps1
└─ output/
```

---

## 🚀 Usage

### 1. ZIPを展開

GitHubからダウンロード。

### 2. 管理者実行

```txt
run_sec.bat
```

を右クリック。

```txt
管理者として実行
```

---

## ⚠ Security

取得される証跡には以下が含まれます。

- IPアドレス
- DNS設定
- ソフトウェア一覧
- ローカルユーザー

外部公開には注意してください。

---

## 🔧 Future

- 規定値チェック
- HTMLレポート
- CSV出力
- 複数サーバ対応
- リモート収集

---

## 🧰 Built With

- PowerShell
- Git
- GitHub
- JSON