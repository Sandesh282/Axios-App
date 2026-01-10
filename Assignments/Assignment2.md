This assignment introduces **state-driven animation** in SwiftUI. The focus is not decoration, but understanding how **state changes drive view interpolation**.
## Objective
**Demo Video:**  
[Screen Recording](https://github.com/user-attachments/assets/9a1ce573-25b2-4f70-93f0-8aa0f18ccc5b)

Build an interactive **Payment Confirmation** component where a payment card **morphs** into a success indicator.

The animation must be driven purely by state changes, not by swapping views

## What This Assignment Teaches
- Using `@State` as the single source of truth
- Animating layout and shape properties
- Understanding how SwiftUI interpolates values
- Proper use of `withAnimation` and `.transition()`

## Core Rule (Non-Negotiable)
**Morph Rule:**

You must animate the properties of **one single `RoundedRectangle`**.

Do **not**:

- Replace one view with another
- Crossfade two shapes
- Animate opacity to fake a morph

If you violate this rule, the submission is considered incorrect.
## Visual States
### Pending State (Initial)

- Large blue rounded rectangle
- Displays text: **CONFIRM PAYMENT**
### Success State (Final)

- Small green circle
- Displays SF Symbol: `checkmark`

Both states must be represented by the **same shape instance**.
## Required Components

1. **Background Shape**
    - `RoundedRectangle`
    - Animates:
        - Width
        - Height
        - Corner radius
        - Color

2. **Conditional Content**
    - Text visible **only** in pending state
    - Checkmark icon visible **only** in success state
    - Must use `if / else` with `.transition()`

3. **Action Button**
    - Toggles state between pending and success
    - Label changes between **Pay Now** and **Reset**
    - State change must be wrapped in `withAnimation`

## Animation Constraints

- Use `.spring()` animation
- You must tune at least:
    - `response`
    - `dampingFraction`

Recommended range:
- `dampingFraction`: 0.4 – 0.8

The animation should feel **physical**, not linear.

## Layout Rules

- Entire component centered
- Dark or black background
- No unnecessary UI elements

Minimalism is intentional.

## Implementation Notes


- Modifier order matters
  - Apply `.frame()` **before** background or shape modifiers

- Transitions must be applied to conditional views
- Avoid placing `.animation()` globally on the root view
---
## Concept Check (For You)

You should be able to explain:

1. Why animating a single shape feels smoother than swapping views
2. What breaks if `.frame()` is applied after the background
3. Why SwiftUI animations require state changes

You do not need to submit answers, but you are expected to understand them.

---
## Submission Format

- Submit the **entire Swift project folder**.

**Folder name:** `Assignment2_<your-name>/`

## Submission Steps

1. Use your existing fork of the Axios App repository
2. Create a new branch:
    
    ```
    git checkout -b assignment-2-<your-name>
    ```
    
3. Inside `assignments/<your-name>/`, add your **entire Swift project folder**:
    
    ```
    assignments/<your-name>/Assignment2_<your-name>/
    ```
    
4. Commit and push:
    
    ```
    git add .
    git commit -m "Submitted Assignment 2 by <your-name>"
    git push origin assignment-2-<your-name>
    ```
    
5. Open a Pull Request to `main`

---

  

## Evaluation Philosophy

  

This assignment is evaluated on:

- Correct use of state
- Clean animation logic
- Respecting constraints
- Code clarity

Visual flair without understanding will not score well.
