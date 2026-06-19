# ⚔️ Kill League of Legends

> *One‑click solution to terminate all League of Legends processes when the game freezes or refuses to close.*

[![Platform](https://img.shields.io/badge/platform-Windows-blue.svg)](https://www.microsoft.com/windows)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

---

## 📌 Overview

**Kill League of Legends** is a lightweight batch script that forcefully ends every running process related to *League of Legends* – including the client, the game itself, and crash handlers.  
It’s designed for those moments when:

- The game window freezes and ignores `Alt+F4`.
- The client gets stuck on the loading screen.
- You can’t open Task Manager (or it’s unresponsive).
- You just want to close the game quickly without navigating through menus.

The script uses the built‑in Windows `taskkill` command with a predefined list of process names, so it’s **fast**, **reliable**, and **doesn’t require any third‑party tools**.

---

## 🚀 Features

- ✅ **Kills all LoL processes** – `LeagueClient.exe`, `LeagueClientUx.exe`, `LeagueClientUxRender.exe`, `LeagueCrashHandler64.exe`, and `League of Legends.exe`.
- ✅ **Forced termination** – uses `/F` to end processes even if they are hung.
- ✅ **Silent mode** – hides “process not found” errors (if a process isn’t running, it simply skips it).
- ✅ **UTF‑8 support** – displays Russian (or any other) characters correctly (optional).
- ✅ **Portable** – just a single `.bat` file – no installation required.
- ✅ **Open source** – you can inspect the code and modify it to your needs.

---

## 📥 Installation

1. **Clone the repository** (or download the `.bat` file directly):
   ```bash
   git clone https://github.com/your-username/kill_league_of_legends.git
   ```
2. Navigate to the folder and locate `kill_lol.bat`.

*Alternatively, you can create the file manually – the full source is just a few lines.*

---

## 🖥️ Usage

1. **Right‑click** on `kill_lol.bat` and select **“Run as administrator”** (this is required to terminate system‑level processes).
2. A console window will appear briefly, showing that all LoL processes have been terminated.
3. The game and client will close immediately – **all unsaved progress will be lost**, so use it wisely.

### ⚡ One‑liner (if you prefer the command line)

You can also run the command directly in an elevated Command Prompt or PowerShell:

```cmd
taskkill /F /IM LeagueClientUx.exe /IM LeagueClientUxRender.exe /IM LeagueClient.exe /IM LeagueCrashHandler64.exe /IM "League of Legends.exe" 2>nul
```

---

## 📂 File Structure

```
kill_league_of_legends/
├── kill_lol.bat          # Main script
├── kill_lol.txt          # Source file
└── README.md             # This file
```

---

## 🔧 Customisation

If you want to add or remove processes, simply edit the `taskkill` line inside the `.bat` file. For example:

```batch
taskkill /F /IM YourProcess.exe /IM AnotherProcess.exe ...
```

To disable the UTF‑8 encoding (if you don’t need Russian characters), remove the line `chcp 65001 >nul`.

---

## ⚠️ Important Notes

- **Run as Administrator** – without elevated rights, the script may fail to terminate some processes.
- **Data loss** – the game is closed forcibly; any unsaved game progress will be lost.
- **No uninstallation** – this is not a permanent modification; it just terminates processes. To uninstall, simply delete the `.bat` file.
- **False positives** – some antivirus software might flag `taskkill` as suspicious, but it’s a legitimate Windows utility.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!  
Feel free to [open an issue](https://github.com/your-username/kill_league_of_legends/issues) or submit a pull request.

---

## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgements

- Inspired by the countless times League of Legends refused to close gracefully.
- Built with ❤️ for the community.

---

**Enjoy a cleaner desktop and a stress‑free exit from the Rift!** 🎮
