# Fawry Internship - Technical Test Solutions

Welcome!  
This repository contains my solutions for the **Fawry Internship Technical Test**.  
It includes implementations for two challenges related to Linux scripting and network troubleshooting.

---

## 📁 Repository Structure

| Folder | Description |
|:-------|:------------|
| **Q1-Custom_Command_(mygrep.sh)** | Solution for the custom `grep`-like command script, supporting options like `-n` (line number), `-v` (invert match), and combined flags. |
| **Q2-Scenario** | Solution for the network troubleshooting scenario involving DNS issues, service reachability, root cause analysis, and applied fixes. |

---

## 📜 Problem Summaries

### Q1: Custom Command (`mygrep.sh`)

- Build a shell script that mimics basic `grep` functionality.
- Features:
  - Case-insensitive string search.
  - Support for flags:
    - `-n` → Show line numbers for matches.
    - `-v` → Invert match (show lines that do not match).
    - Support combinations like `-vn`, `-nv`.
  - Error handling for invalid inputs.
  - Bonus: `--help` flag and enhanced option parsing with `getopts`.

---

### Q2: Scenario - DNS and Service Troubleshooting

- Diagnose why an internal service (`internal.example.com`) is unreachable.
- Tasks:
  - Verify DNS resolution using system-configured DNS and 8.8.8.8.
  - Check service availability on HTTP/HTTPS ports.
  - Identify and list all possible root causes (DNS misconfiguration, firewall rules, service downtime, routing issues).
  - Propose and apply fixes using Linux commands.
  - Bonus: Demonstrate bypassing DNS with `/etc/hosts` and persisting DNS settings with `systemd-resolved` or `NetworkManager`.

---

## ⚡ How to Run

### For `mygrep.sh`

1. Navigate to the folder:

   ```bash
   cd Q1-Custom_Command_(mygrep.sh)
   ```

2. Make the script executable:

   ```bash
   chmod +x mygrep.sh
   ```

3. Example usage:

   ```bash
   ./mygrep.sh "search_term" filename.txt
   ./mygrep.sh -n "search_term" filename.txt
   ./mygrep.sh -v "search_term" filename.txt
   ./mygrep.sh -vn "search_term" filename.txt
   ```

---

## 📸 Screenshots

Inside the **Q2-Scenario** folder, you will find screenshots demonstrating:

- DNS resolution tests,
- Service port checks,
- Firewall and routing fixes,
- Application of the solution steps.

---

## 🙌 Acknowledgment

This work was completed as part of the recruitment process for the **Fawry Internship Program**.  
Thank you for reviewing my solutions!

---

# ✅ Done

---
