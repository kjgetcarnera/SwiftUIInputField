//
//  InputField.swift
//  MVPDemoApp
//
//  Created by Kiran Jadhav on 20/06/25.
//

import SwiftUI

struct InputField: View {
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var showToggle: Bool = false
    var trailingIcon: String? = nil
    var onTrailingIconTap: (() -> Void)? = nil

    @State private var isSecureVisible: Bool = false

    var body: some View {
        ZStack(alignment: .trailing) {
            Group {
                if isSecure && !isSecureVisible {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            .padding()
            .frame(height: 55)
            .background(Color(.systemGray6))
            .cornerRadius(8)

            if isSecure {
                Button(action: {
                    isSecureVisible.toggle()
                }) {
                    Image(systemName: isSecureVisible ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            } else if let icon = trailingIcon {
                Button(action: {
                    onTrailingIconTap?()
                }) {
                    Image(systemName: icon)
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
        }
    }
}

#Preview {
    InputField(placeholder: "Password", text: .constant(""), isSecure: true)
}

