# SwiftUI InputField Component

Reusable SwiftUI component for customizable input fields with support for:
- Secure input (password field)
- Show/Hide password toggle
- Trailing icons (like clear/search)
- Action on trailing icon tap

## 📦 Usage

```swift
import SwiftUI

struct LoginView: View {
    @State private var password = ""

    var body: some View {
        InputField(
            placeholder: "Enter password",
            text: $password,
            isSecure: true
        )
    }
}



## 📁 File Structure

SwiftUIInputField/
├── Sources/
│   └── InputField.swift
├── README.md
└── .gitignore



## 🔧 Customization


| Parameter           | Type              | Description                         |
| ------------------- | ----------------- | ----------------------------------- |
| `placeholder`       | `String`          | Placeholder text                    |
| `text`              | `Binding<String>` | Bound text variable                 |
| `isSecure`          | `Bool`            | Enables secure (password) mode      |
| `showToggle`        | `Bool`            | (Not used, reserved for future use) |
| `trailingIcon`      | `String?`         | System icon name (SF Symbols)       |
| `onTrailingIconTap` | `(() -> Void)?`   | Callback for trailing icon tap      |


✅ Requirements

iOS 14+
Swift 5+
SwiftUI
