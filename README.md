# Glassmorphism Card (BackdropFilter Widget) Presentation

This widget (`BackdropFilter`) is useful in Flutter when you want to blur whatever is behind a widget to create a frosted "glass" effect, instead of blurring the widget itself.
It is placed inside a `Stack`, wrapped in `ClipRRect` so the blur respects rounded corners, and it takes its own arguments (properties) that control how the blur is applied to the content behind it.

## How to Run

To run this project you must have Flutter with all its dependencies installed.

1. Clone the repo
   ```
   [git clone https://github.com/<your-username>/<your-repo>.git](https://github.com/stevenalu/widget_presentation.git)
   ```
2. Move inside the project
   ```
   cd demo_app
   ```
3. Get the packages
   ```
   flutter pub get
   ```
4. Run the app
   ```
   flutter run
   ```

## The Attributes of **BackdropFilter** Used in This Demo

### 1. filter
This is the core property of `BackdropFilter()`. It takes an `ImageFilter`, in this case `ImageFilter.blur(sigmaX: 10, sigmaY: 10)`, which blurs everything drawn behind the widget. Raising `sigmaX`/`sigmaY` makes the background more blurred; lowering it keeps the background sharper.

### 2. enabled
This boolean controls whether the filter is actually applied. When `enabled` is `false`, the backdrop is left untouched (no blur), which is handy for toggling the glass effect on and off, for example based on a theme setting or user preference, without removing the widget from the tree.

### 3. child
This is the content rendered on top of the blurred backdrop, here a semi-transparent `Container` (`Colors.white.withValues(alpha: 0.15)`) holding the "Cool Glass-like card" text. Adjusting the child's opacity and color changes how "glassy" versus solid the card looks against the blurred background.

## Demo Screenshot of the Final UI

Below is a screenshot of the glass card rendered over the background image:

<img width="217" height="465" alt="Screenshot 2026-07-02 114948" src="https://github.com/user-attachments/assets/61b7e9a7-3a16-4a50-9754-cdcf88371f37" />


## In-Class Presentation Date

Presented on: 2026-07-02
