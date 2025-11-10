# Axios App – Assignment Submission Guide

Welcome to the **Axios App Repository!**
This repository is used for project documentation and assignment submissions for the Axios learning module.

---

## Repository Structure

```bash
Axios-app/
│
├── docs/                 # Project notes, reference material, and guides
├── assignments/          # Folder where you'll submit all your assignments
└── README.md             # You're reading it!
```

> ⚠️ **Note:** The `assignments` folder will be updated regularly with new assignment templates or starter files. Always check this repository before starting your next task.

---

## How to Submit Your Assignment

Follow these steps **exactly** to ensure your submission is accepted.

### 1. Fork the Repository

1. Go to [https://github.com/sandesh282/Axios-app](https://github.com/sandesh282/Axios-app)
2. Click the **Fork** button in the top-right corner.
3. This creates a copy under your own GitHub account.

---

### 2. Clone Your Fork

Open your terminal and run:

```bash
git clone https://github.com/<your-username>/Axios-app.git
```

Then navigate inside the folder:

```bash
cd Axios-app
```

---

### 3. Create a New Branch

Each assignment should be submitted in a separate branch.

```bash
git checkout -b assignment-1-<your-name>
```

For example:

```bash
git checkout -b assignment-1-ravi
```

---

### 4. Add Your Work

1. Open the `assignments` folder.
2. Create a new folder named after you:

   ```
   assignments/<your-name>/
   ```
3. Place all your files (code, screenshots, or reports) inside that folder.

Example:

```
assignments/
└── ravi/
    ├── Tut.zip
```

---

### 5. Commit and Push

Once done, commit your work:

```bash
git add .
git commit -m "Added Assignment 1 by Ravi"
git push origin assignment-1-ravi
```

---

### 6. Create a Pull Request

1. Go to your forked repo on GitHub.
2. Click **Compare & Pull Request**.
3. Set the base repository to `sandesh282/Axios-app`.
4. Add a meaningful title like:
   **“Assignment 1 Submission – Ravi”**
5. Add any short notes in the description (optional).
6. Click **Create Pull Request**.

---

## Submission Rules

- Keep your folder names clean (`assignments/<your-name>/`)
- Don’t edit or delete others’ files
- One Pull Request per assignment
- Make sure your code runs without errors
- Always pull the latest changes before starting a new assignment

---

## Pro Tip

Before every new assignment:

```bash
git pull origin main
```

to ensure you have the latest version of the repo.

---

## Need Help?

If you face issues during submission: Reach out to members!

---

**Happy Coding & Learning! 🚀**
