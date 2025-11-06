# Assignment 1 – SwiftUI Profile UI Screen

This assignment focuses on building a **Profile UI Screen** using SwiftUI.

---

## Objective
<img width="800" height="800" alt="image" src="https://github.com/user-attachments/assets/2dc844b6-049b-457f-9c97-0701350a0b88" />

Design a **Profile Screen** similar to the reference image. Your screen should include:

* A **profile section** with a circular avatar, name, and age.
* A **bio section** with a short paragraph of text.
* A **gallery grid** showing multiple image placeholders.

This task is designed to help you practice **SwiftUI layout composition**, **stacks (VStack, HStack, ZStack)**, **images**, **shapes**, and **text formatting**.

---

## Requirements

1. Use **SwiftUI**.
2. Use at least the following SwiftUI components:

   * `VStack`, `HStack`, or `ZStack`
   * `Image`, `Text`, and `Rectangle` or `RoundedRectangle`
   * `Spacer` and `Divider` where necessary for spacing and separation
3. Format your text using modifiers such as `.font()`, `.foregroundColor()`, `.padding()`, and `.bold()`.
4. Arrange the gallery using a **grid-like layout** (e.g., using `LazyVGrid`).
5. Make sure your design is visually clean and properly aligned.

---

## Submission Format

Submit a **ZIP file** containing your full Swift project.

**File naming format:**

```
Assignment1_<your-name>.zip
```

**Example:**

```
Assignment1_AnanyaPatel.zip
```

---

## How to Submit

1. Fork the repository: [Axios App Repo](https://github.com/sandesh282/Axios-app)
2. Clone your fork locally.
3. Create a new branch:

   ```bash
   git checkout -b assignment-1-<your-name>
   ```
4. Inside the `assignments` folder, create a folder with your name:

   ```
   assignments/<your-name>/
   ```
5. Place your ZIP file there:

   ```
   assignments/<your-name>/Assignment1_<your-name>.zip
   ```
6. Commit and push your branch:

   ```bash
   git add .
   git commit -m "Submitted Assignment 1 by <your-name>"
   git push origin assignment-1-<your-name>
   ```
7. Create a Pull Request to the main repository.

---

## Example Folder Structure

```
assignments/
└── ravi/
    └── Assignment1_Ravi.zip
```

---

## Deadline

All submissions must be completed **before the announced due date**. Late submissions may not be accepted.

---

## Tips

* Use **stacks** strategically to control layout spacing.
* Experiment with **RoundedRectangle** for backgrounds or gallery items.
* Use system icons via `Image(systemName: "person.circle")`.
* Maintain consistent padding and alignment.
* For text, consider using `.font(.title2)` or `.font(.subheadline)` for visual hierarchy.

> **Optional Challenge:** Try adding a background **linear gradient** to your screen for a modern look.
> If you’re not sure how gradients work, you can explore **SwiftUI gradients** before the next class — it’ll be discussed in detail soon.

---


