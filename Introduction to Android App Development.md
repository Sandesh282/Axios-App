
This guide is designed for first-year students starting with Android app development. It will cover the basics of Android project structure, the activity lifecycle, common UI elements, and layouts.
## 1. File Structure of an Android Project

When you create a new Android project in **Android Studio**, you will see many folders and files. It can look confusing at first, but here’s a simple breakdown:

- **`app/` folder**  
  This is where most of your app code lives. Inside it, you will find:
  
  - **`java/`**  
    Contains your Java or Kotlin code (e.g., activities, classes, and logic).  
    Example: `MainActivity.java`
  
  - **`res/` (resources)**  
    Stores all your app resources like images, layouts, colors, and strings.  
    - **`layout/`** → XML files that define the UI (e.g., `activity_main.xml`).  
    - **`drawable/`** → Images, shapes, and icons.  
    - **`values/`** → Colors, styles, and string values.  
  
  - **`AndroidManifest.xml`**  
    The blueprint of your app. It defines activities, permissions, and other essential information.

Think of the structure like this:

```
app/
 └── src/
     └── main/
         ├── java/ (code)
         ├── res/ (UI resources)
         │    ├── layout/
         │    ├── drawable/
         │    └── values/
         └── AndroidManifest.xml
```

---

## 2. Activity Lifecycle

An **Activity** is like a screen in your app. For example, a login screen or a home screen. But activities don’t just appear — they go through different states, called the **Activity Lifecycle**.

Here are the main lifecycle methods:

1. **onCreate()** → Called when the activity is created (good for setting up UI).  
2. **onStart()** → Activity becomes visible to the user.  
3. **onResume()** → Activity comes to the foreground and the user can interact.  
4. **onPause()** → Another activity comes in front (but this one is still partially visible).  
5. **onStop()** → Activity is no longer visible.  
6. **onDestroy()** → Activity is destroyed (like closing the screen).

### Simple Analogy
Think of an Activity like a YouTube video:
- **onCreate()** → Opening the video page.  
- **onStart()** → Video appears.  
- **onResume()** → Video starts playing.  
- **onPause()** → You switch tabs (video pauses).  
- **onStop()** → You minimize the app.  
- **onDestroy()** → You close the app completely.

For beginners, focus on **onCreate()** since that’s where most setup happens.

---

## 3. Common UI Elements (Widgets)

Android provides many building blocks for creating your app’s UI. Here are some of the most common:

### TextView
Used to display text on the screen.

```xml
<TextView
    android:id="@+id/textView"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Hello, World!" />
```

### EditText
Used for input fields where users can type text (like username/password).

```xml
<EditText
    android:id="@+id/editText"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="Enter your name" />
```

### Button
A clickable button for actions.

```xml
<Button
    android:id="@+id/button"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Click Me" />
```

### ImageView
Displays images in the app.

```xml
<ImageView
    android:id="@+id/imageView"
    android:layout_width="100dp"
    android:layout_height="100dp"
    android:src="@drawable/sample_image" />
```

### CardView
A container with rounded corners and shadow, often used for lists or modern UI design.

```xml
<androidx.cardview.widget.CardView
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:cardCornerRadius="8dp"
    app:cardElevation="4dp">
    
    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="This is inside a CardView" />
</androidx.cardview.widget.CardView>
```

### VideoView
Used to play videos inside your app.

```xml
<VideoView
    android:id="@+id/videoView"
    android:layout_width="match_parent"
    android:layout_height="wrap_content" />
```

---

## 4. Layouts in Android

Layouts are containers that define how elements (widgets) are arranged on the screen. Some common ones:

- **LinearLayout** → Arranges elements in a row (horizontal) or column (vertical).  
- **RelativeLayout** → Positions elements relative to each other.  
- **ConstraintLayout** → A flexible layout where you define constraints between elements.  
- **FrameLayout** → Stacks elements on top of each other.

### Example: LinearLayout (vertical)
```xml
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Welcome" />

    <Button
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Get Started" />
</LinearLayout>
```

---

## Summary

- An Android project has a structured set of files: `java/`, `res/`, and `AndroidManifest.xml`.  
- Activities are the main screens, and they follow a lifecycle from creation to destruction.  
- Common widgets include `TextView`, `EditText`, `Button`, `ImageView`, `CardView`, and `VideoView`.  
- Layouts like `LinearLayout`, `RelativeLayout`, and `ConstraintLayout` control how your UI is arranged.  

This is your foundation for building simple Android apps. Once you are comfortable with these, you can start combining them to build interactive and more advanced apps.
