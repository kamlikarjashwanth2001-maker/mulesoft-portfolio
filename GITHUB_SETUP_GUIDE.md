# 📘 How to Upload Your MuleSoft Portfolio to GitHub
## Complete Step-by-Step Guide for Beginners | Kamlikar Jashwanth

---

## 🎯 What You'll Achieve

By the end of this guide, your MuleSoft portfolio will be live on GitHub — just like your friend's!

---

## STEP 1: Create a GitHub Account

1. Go to 👉 https://github.com
2. Click **"Sign Up"**
3. Enter your email: `kamlikarjashwanth2001@gmail.com`
4. Create a username (suggestion: `kamlikar-jashwanth`)
5. Create a password
6. Verify your email

---

## STEP 2: Create a New Repository

1. After logging in, click the **"+"** icon (top right corner)
2. Select **"New repository"**
3. Fill in:
   - **Repository name:** `mulesoft-portfolio`
   - **Description:** `My MuleSoft integration portfolio — DataWeave, Database, Error Handling & RAML`
   - Select **"Public"** ✅
   - Check **"Add a README file"** ✅
4. Click **"Create repository"** (green button)

---

## STEP 3: Install Git on Your Computer

### For Windows:
1. Go to 👉 https://git-scm.com/download/win
2. Download and install (keep all default settings)
3. After install, open **"Git Bash"** (search in Start menu)

---

## STEP 4: Connect Git to Your GitHub Account

Open **Git Bash** and type these commands (one by one, press Enter after each):

```bash
git config --global user.name "Kamlikar Jashwanth"
git config --global user.email "kamlikarjashwanth2001@gmail.com"
```

---

## STEP 5: Upload Your Portfolio Files

### 5a. Open Git Bash
Right-click on your desktop → **"Git Bash Here"**

### 5b. Navigate to your portfolio folder
```bash
# Example if your portfolio is on Desktop:
cd Desktop/mulesoft-portfolio
```

### 5c. Initialize Git
```bash
git init
```

### 5d. Connect to your GitHub repository
```bash
# Replace YOUR_USERNAME with your actual GitHub username
git remote add origin https://github.com/YOUR_USERNAME/mulesoft-portfolio.git
```

### 5e. Add all files
```bash
git add .
```

### 5f. Create your first commit
```bash
git commit -m "🚀 Initial commit - MuleSoft Portfolio by Kamlikar Jashwanth"
```

### 5g. Push to GitHub
```bash
git branch -M main
git push -u origin main
```

### 5h. Enter your credentials when asked
- **Username:** your GitHub username
- **Password:** use a Personal Access Token (see Step 6)

---

## STEP 6: Create a Personal Access Token (Instead of Password)

GitHub no longer accepts passwords — you need a token:

1. Go to GitHub → Click your **profile photo** → **Settings**
2. Scroll down → Click **"Developer settings"**
3. Click **"Personal access tokens"** → **"Tokens (classic)"**
4. Click **"Generate new token (classic)"**
5. Set:
   - **Note:** `portfolio-upload`
   - **Expiration:** 90 days
   - Check **"repo"** checkbox ✅
6. Click **"Generate token"**
7. **COPY the token immediately** (it won't show again!)
8. Use this token as your password in Step 5h

---

## STEP 7: Verify Your Portfolio is Live! 🎉

1. Go to: `https://github.com/YOUR_USERNAME/mulesoft-portfolio`
2. You should see all your files!
3. Share this link on your LinkedIn profile

---

## 📌 Your Portfolio Links to Share

Once uploaded, your portfolio will be at:

```
https://github.com/YOUR_USERNAME/mulesoft-portfolio
```

**Share this on:**
- 💼 LinkedIn profile (About section)
- 📧 Resume / CV
- 📄 Job applications

---

## 🔄 How to Update Portfolio Later (Add New Projects)

Every time you add new files or make changes:

```bash
git add .
git commit -m "✨ Added new MuleSoft project: [project name]"
git push
```

That's it! Your GitHub will auto-update. 🎉

---

## ❓ Troubleshooting

| Problem | Solution |
|---------|----------|
| "git is not recognized" | Restart Git Bash after installing Git |
| "Authentication failed" | Use Personal Access Token (Step 6), not your password |
| "Repository not found" | Check the URL in step 5d is correct |
| Files not showing on GitHub | Make sure you ran `git push` |

---

## 🆘 Need Help?

If you're stuck, open a new chat and share the exact error message — I'll help you fix it! 💪
