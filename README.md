# 🔤 SwiftUI InputField Component

A reusable and customizable **SwiftUI `InputField`** component with:

✅ Secure input (password field)  
✅ Show/Hide password toggle  
✅ Optional trailing icon (e.g., clear, search)  
✅ Action handler on trailing icon tap

---

## 📲 Preview

<img src="https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png" alt="SwiftUI" width="24"/> Built using SwiftUI  
🎯 Minimum iOS Version: **iOS 14**  
💻 Language: **Swift 5+**

---

## 📦 Installation

Drag and drop `InputField.swift` into your SwiftUI project.


---

## 🚀 Usage

Import and use the component in your SwiftUI views.

### 💡 Basic Example:

```swift
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 16) {
            InputField(
                placeholder: "Email",
                text: $email
            )

            InputField(
                placeholder: "Password",
                text: $password,
                isSecure: true
            )
        }
        .padding()
    }
}


## ⚙️ Parameter

| Parameter           | Type              | Description                                |
| ------------------- | ----------------- | ------------------------------------------ |
| `placeholder`       | `String`          | Placeholder text for the field             |
| `text`              | `Binding<String>` | Two-way binding to the input value         |
| `isSecure`          | `Bool`            | Toggles secure text entry (e.g., password) |
| `showToggle`        | `Bool`            | *(Reserved – currently not used)*          |
| `trailingIcon`      | `String?`         | Name of SF Symbol to show as trailing icon |
| `onTrailingIconTap` | `(() -> Void)?`   | Callback when trailing icon is tapped      |


🎨 Customization
You can easily extend the component to support:

Validation indicators

Custom colors or font styles

Icons on both sides

Multiline input

Let us know if you'd like examples for any of these.


✅ Requirements
iOS 14+
Swift 5+
SwiftUI


📄 License
This project is licensed under the MIT License.
Feel free to use, modify, and share it!


🙌 Contributions
Got suggestions or improvements?
Feel free to open an issue or submit a pull request!


🔗 Author
Made with ❤️ by Kiran Jadhav


> Let me know if you'd like a `LICENSE` file or `.gitignore` too, or want to convert it into a Swift Package Manager library for reuse.

