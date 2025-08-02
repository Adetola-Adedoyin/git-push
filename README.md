# 🚀 Git Auto-Push Script

A simple Bash script that automates the process of pushing your local code to a GitHub repository using the `--force` option.

## 🧠 What It Does

This script performs the following:

1. `git init`
2. `git add .`
3. `git commit -m "<your message>"`
4. `git remote add origin <your GitHub repo URL>`
5. `git branch -M <your branch name>`
6. `git push -u origin <your branch name> --force`

It prompts you to input:
- Commit message
- GitHub repo URL
- Branch name (e.g., `main`)

---

## 🛠️ Setup Instructions

### 🐧 For Linux (Ubuntu or other distros)

#### 1. **Save the Script**
Create a file called `git-push.sh` and paste the script contents inside.

#### 2. **Make It Executable**
Open your terminal and run:
```bash
chmod +x ~/git-push.sh
```

#### 3. **Create an Alias (optional)**
Add this line to your ~/.bashrc (or ~/.zshrc if you use zsh):
```bash
alias gpush='~/git-push.sh'
```

#### 4. **Then reload your shell**
```bash
source ~/.bashrc
```

Now you can use the script in your VS Code terminal like:
```bash
gpush
```

## 🪟 For Windows (Git Bash or WSL)

### 1. **Save the Script**
**Save git-push.sh in your home directory:**
- For Git Bash: `C:\Users\<YourUsername>\git-push.sh`
- For WSL: `/home/<your-username>/git-push.sh`

### 2. **Make It Executable (Git Bash)**
In Git Bash:
```bash
chmod +x ~/git-push.sh
```

### 3. **Add an Alias (Git Bash)**
Open ~/.bashrc (create it if it doesn't exist) and add:
```bash
alias gpush='~/git-push.sh'
```

Then run:
```bash
source ~/.bashrc
```

### 4. **Run from VS Code Terminal**
Make sure your VS Code terminal is set to Git Bash or WSL, then type:
```bash
gpush
```
