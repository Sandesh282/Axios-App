
## Basic Data Types
| Type | Example | Description |
|------|----------|-------------|
| Numbers | Int, Float, Double, Long, Short, Byte | Used for mathematical operations |
| Boolean | true / false | Used in conditions |
| Character | 'A' | Single characters, enclosed in single quotes |
| String | "Hello Kotlin" | Sequence of characters enclosed in double quotes |
| Array | arrayOf(1, 2, 3) | Fixed-size collection of similar data types |

---

## `val` vs `var`
### `val`
- Immutable, read-only. Assigned once and cannot be reassigned.
```kotlin
val name = "Sandesh"
```
### `var`
- Mutable. Value can change.
```kotlin
var age = 19
age = 20
```

**FAQ:** Why can `val` be used with `mutableListOf()`?  
Because the *reference* is fixed but the *contents* of the list can change.
```kotlin
val list = mutableListOf(1, 2)
list.add(3) // Allowed
list = mutableListOf(4, 5) // Not allowed
```

---

## Functions
Defined using the `fun` keyword.
```kotlin
fun add(a: Int, b: Int): Int {
    return a + b
}
```

---

## Loops
### `for` loop
Iterates through ranges or collections.
```kotlin
for (i in 1..5) {
    println(i)
}
```

---

## Nullable Values
Kotlin variables are non-null by default.  
To allow `null`, use `?` after the type.
```kotlin
var name: String? = null
```

### Accessing Nullable Variables
1. **Safe Call (?.)** – returns `null` if variable is `null`  
2. **Elvis Operator (?:)** – provides a default value  
3. **Non-null Assertion (!!)** – forces non-null (unsafe)

Example:
```kotlin
println(name?.length)
println(name ?: "Unknown")
println(name!!.length) // risky
```

---

## `when` Expression
Replaces multiple `if` conditions, similar to `switch`.
```kotlin
when (x) {
    1 -> println("One")
    2 -> println("Two")
    else -> println("Other")
}
```

---

## Arrays
Arrays store fixed-size collections of elements of the same type.
```kotlin
val nums = arrayOf(1, 2, 3, 4)
```
### Common Functions
- `nums.size` – get array length  
- `nums[0]` – access element by index  
- `nums.joinToString(", ")` – convert array to string  
- `nums.contains(3)` – check if element exists  
- `nums.indexOf(2)` – find index of an element  

---

## Lists
Lists maintain order and allow duplicates.

```kotlin
val names = listOf("A", "B", "C") // Immutable
val mutableNames = mutableListOf("A", "B")
mutableNames.add("C")
mutableNames.remove("A")
println(mutableNames.joinToString("-"))
```
### Useful Functions
- `add(element)` – adds element  
- `remove(element)` – removes element  
- `size` – number of elements  
- `joinToString()` – converts list to string  
- `contains(element)` – checks presence  

---

## Sets
Sets store unique elements only.

```kotlin
val nums = setOf(1, 2, 2, 3) // [1, 2, 3]
val mutableNums = mutableSetOf(1, 2, 3)
mutableNums.add(4)
mutableNums.remove(2)
```
### Functions
- `add(element)` – adds unique element  
- `remove(element)` – removes element  
- `contains(element)` – checks existence  
- `union(set)` – combines two sets  
- `intersect(set)` – common elements  

---

## Maps
Maps store key-value pairs.

```kotlin
val capitals = mapOf("India" to "Delhi", "USA" to "Washington")
val mutableCapitals = mutableMapOf("UK" to "London")
mutableCapitals["France"] = "Paris"
mutableCapitals.remove("UK")
```
### Functions
- `put(key, value)` – adds or updates entry  
- `remove(key)` – deletes key-value pair  
- `get(key)` – returns value for key  
- `keys` / `values` – returns all keys or values  
- `forEach { (k, v) -> println("$k -> $v") }` – iterate map  

---

## Filtering Collections
```kotlin
val nums = listOf(1, 2, 3, 4, 5)
val even = nums.filter { it % 2 == 0 }
val odd = nums.filterNot { it % 2 == 0 }
```

---

## Resources
- Playground: https://play.kotlinlang.org/  
- Documentation: https://kotlinlang.org/docs/basic-syntax.html  
- YouTube Playlist: https://www.youtube.com/playlist?list=PLQkwcJG4YTCRSQikwhtoApYs9ij_Hc5Z9

---

## UI with Kotlin (Android)

### Layout Basics
- A **Layout** is a container holding UI elements.  
- **LinearLayout** arranges views vertically or horizontally.  
- **Nested Layouts** can group related elements.

Common Views:
- `ImageView`
- `TextView`
- `Button` (MaterialButton recommended)
- `EditText` (use TextInputLayout)
- `CardView`, `VideoView`

---

## Connecting UI with Code
### `findViewById`
Links XML elements to Kotlin code.
```kotlin
val btn = findViewById<Button>(R.id.submitBtn)
```

---

## Context
Represents the current environment or activity.  
Usually accessed using `this`.

---

## Toast
Displays a short message on screen.
```kotlin
Toast.makeText(this, "Hello", Toast.LENGTH_SHORT).show()
```

---

## Intent
Used for navigation between screens.
```kotlin
val intent = Intent(this, SecondActivity::class.java)
startActivity(intent)
```

---
