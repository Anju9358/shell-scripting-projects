# 🐧 shell-scripting-projects

Shell scripting projects from basic scripts to advanced-level tasks.

This repository contains a collection of practical shell scripts designed for real-world Linux system administration tasks, user management, backups, and more. Each script is thoroughly documented, with detailed blog posts explaining their functionality, use-cases, and implementation.

---

## 📜 Scripts Overview

### 1. `create_user.sh` & `delete_user.sh`
- Automates user account creation and deletion.
- Useful for sysadmins managing multiple users in a Linux environment.
- Includes input validation and error handling.

📖 Blog: [Create & Delete User Scripts](https://anjudevopsjourney.hashnode.dev/shell-script-for-user-management)

---

### 2. `rotational_backup.sh`
- Performs rotational backups with date-stamped folders.
- Keeps a limited number of backups to avoid storage issues.
- Helps automate periodic system or file backups.

📖 Blog: [shell-script-for-rotational-backup](https://anjudevopsjourney.hashnode.dev/shell-script-for-rotational-backup)

---

### 3. `sysinfo_chat.sh`, `user_arrgument.sh` & `user_input.sh`
- Collects system information and presents it in an easy-to-read format.
- Demonstrates both command-line arguments and interactive user input handling.
- Great for beginners learning shell scripting basics.

📖 Blog: [basic-shell-scripts](https://anjudevopsjourney.hashnode.dev/basic-shell-scripts)

---

### 4. `aws_resources_tracker.sh`
- Fetches and displays AWS resource information using AWS CLI.
- Useful for tracking EC2 instances, S3 buckets, and more.
- Requires proper IAM permissions and AWS CLI setup.

📖 Blog: [shell-scripting-for-daily-aws-resource-monitoring](https://anjudevopsjourney.hashnode.dev/shell-scripting-for-daily-aws-resource-monitoring)

---

## 🚀 Getting Started

To run any script:

```bash
chmod +x script_name.sh
./script_name.sh
