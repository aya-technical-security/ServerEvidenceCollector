# 🛡️ ServerEvidenceCollector

> Windows Server の構成情報・監査情報を  
> 自動取得する PowerShell ベースの証跡収集ツール

---

## 🔍 取得できる情報

### 構成情報

- OS情報
- Hotfix
- Disk情報
- Volume情報

### ネットワーク情報

- IP設定
- DNS
- Firewall
- Adapter情報

### ユーザー・サービス情報

- LocalUser
- Service一覧

### ログ取得

- System Log
- Application Log

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

## 📁 フォルダ構成

```txt
ServerEvidenceCollector/
├─ config.json
├─ run_sec.bat
├─ sec.ps1
└─ output/   ← 実行後に自動生成
```

---

## 🚀 実行方法

1. ZIPを展開
2. `run_sec.bat` を右クリック
3. 「管理者として実行」

---

## ⚠ 注意事項

取得した証跡には以下の情報が含まれます。

- IPアドレス
- DNS設定
- ソフトウェア一覧
- ローカルユーザー情報

そのまま外部公開しないでください。

---

## 🔧 今後追加したい機能

- 規定値チェック
- HTMLレポート
- CSV出力
- 複数サーバ対応

---

## 🧰 使用技術

- PowerShell
- Git
- GitHub
- JSON

---

## 📦 ダウンロード

右上の

```txt
Code
```

↓

```txt
Download ZIP
```

からダウンロードしてください。