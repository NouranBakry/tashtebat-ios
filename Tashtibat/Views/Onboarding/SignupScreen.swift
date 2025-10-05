//
//  SignupScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 31/12/2024.
//

import SwiftUI

struct SignupScreen: View {
    var signUpAction: () -> Void = {}
    
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    
    @State private var emailError: String? = nil
    @State private var nameError: String? = nil
    @State private var phoneNumberError: String? = nil
    
    @State private var isChecked = false
    @State private var isLoading = false
    
    @State private var errorMessage: String?
    @State private var isSignedUp = false
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        // Title Section
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Sign up")
                                .font(Font.custom("Alexandria", size: 24))
                                .foregroundColor(.black)
                            Text("Elevate your home. Create Account now!")
                                .font(Font.custom("Alexandria", size: 13).weight(.light))
                                .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 16)
                        
                        // InputField name
                        InputField(title: "Name", text: $name, error: $nameError)
                            .onChange(of: name){
                                validateName(name)
                            }
                        
                        InputField(title: "Phone number", text: $phoneNumber, error: $phoneNumberError, leadingIcon: Image("egyptian flag"))
                            .onChange(of: phoneNumber){ validatePhoneNumber(phoneNumber)}
                            .keyboardType(.numberPad)
                        
                        InputField(title: "Email", text: $email, error: $emailError)
                            .onChange(of: email) { newValue in
                                validateEmail(newValue)
                            }
                            .keyboardType(.emailAddress)
                        
                        InputField(title: "Password", text: $password, error: .constant(nil), isSecure: true)
                        
                        
                        // Login Navigation
                        VStack(spacing: 16) {
                            HStack(alignment: .top, spacing: 8) {
                                Text("Already have an account ?")
                                    .font(Font.custom("Alexandria", size: 13).weight(.light))
                                    .lineSpacing(18.20)
                                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                NavigationLink (destination: LoginScreen()){
                                    Text("Log in")
                                        .font(Font.custom("Alexandria", size: 13))
                                        .lineSpacing(18.20)
                                        .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                                }
                            }
                        }
                        // Terms and conditions
                        HStack(spacing: 8) {
                            Toggle(isOn:$isChecked){
                                Text("I accept all terms & conditions.")
                                    .font(Font.custom("Alexandria", size: 13).weight(.light))
                                    .lineSpacing(18.20)
                                    .foregroundColor(.black)
                                    .frame(width: 216, height: 18);
                            }
                            .toggleStyle(CheckboxToggleStyle())
                        }
                        .frame(width: 216, height: 18)
                        
                        HorizontalButton(title: isLoading ? "Signing up..." : "Sign up", action: handleSignUp)
                            .disabled(isLoading)
                            .padding(.top, 40)
                        // Hidden NavigationLink that activates when isSignedUp is true
                        NavigationLink(destination: HomeScreen(), isActive: $isSignedUp) {
                            EmptyView()
                        }
                        
                        Spacer()
                        
                        // Terms and conditions
                        Text("By signing up, you agree to our Terms and Privacy Policy.")
                            .font(Font.custom("Alexandria", size: 11))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.top, 16)
                    }
                    .padding(.horizontal, 24)
                } // ← close ScrollView here
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    // Email validation logic
    func validateEmail(_ value: String) {
        if value.isEmpty {
            emailError = "Email cannot be empty."
        } else if !value.contains("@") || !value.contains(".") {
            emailError = "Please enter a valid email."
        } else {
            emailError = nil
        }
    }
    
    // Name validation logic
    func validateName(_ value: String) {
        if value.isEmpty {
            nameError = "Name cannot be empty."
        } else {
            nameError = nil
        }
    }
    
    // Phone number validation
    func validatePhoneNumber(_ value: String) {
        let regEx = "^[0-9]{11}$"
        if value.isEmpty {
            phoneNumberError = "Phone number cannot be empty."
        } else if !value.contains(where: { ("0"..."9").contains($0) } ) {
            phoneNumberError = "Please enter a valid phone number."
        } else {
            let phoneCheck = NSPredicate(format: "SELF MATCHES %@", regEx)
            let validPhone = phoneCheck.evaluate(with: value)
            if (validPhone){
                phoneNumberError = nil
            } else {
                phoneNumberError = "Phone number is invalid."
            }
        }
    }
    
    struct CheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .foregroundColor(configuration.isOn ? Color(red: 1, green: 0.60, blue: 0): .gray)
                    .onTapGesture {
                        configuration.isOn.toggle()
                    }
                    .cornerRadius(6)
                
                configuration.label
                    .font(.headline)
            }
        }
    }
    
    private func handleSignUp() {
        guard isChecked else {
            errorMessage = "You must accept the terms & conditions."
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        guard !email.isEmpty, !phoneNumber.isEmpty, !password.isEmpty, !name.isEmpty else {
            print("All fields are required.")
            return
        }
        
        // Print the request payload
        let requestData: [String: Any] = [
            "email": email,
            "phoneNumber": phoneNumber,
            "password": password,
            "name": name
        ]
        print("📤 Sending Request: \(requestData)")
        
        AuthenticationService.shared.signUp(email: email, password: password, phoneNumber: phoneNumber, name: name) { success, error in
            if success {
                print("✅ User registered successfully!")
                isSignedUp = true  // Navigate to HomeScreen
            } else {
                // TODO: Show Error if sign up failed
                print("❌ Registration failed: \(error ?? "Unknown error")")
            }
        }
    }
    
    // Custom TextField Component
    struct CustomTextField: View {
        let title: String
        @Binding var text: String
        @Binding var error: String?
        
        var body: some View {
            VStack(alignment: .leading, spacing: 4) {
                TextField(title, text: $text)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)
                    .autocapitalization(.none)
                
                if let error = error {
                    Text(error)
                        .foregroundColor(.red)
                        .font(.caption)
                }
            }
        }
    }
}

struct InputField: View {
    let title: String
    @Binding var text: String
    @Binding var error: String?
    var isSecure: Bool = false
    var leadingIcon: Image? = nil
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                if let icon = leadingIcon {
                    icon
                        .padding(.horizontal, 8)
                        .frame(height: 44)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                }
                
                if isSecure {
                    SecureField(title, text: $text)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                        .autocapitalization(.none)
                } else {
                    TextField(title, text: $text)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                        .autocapitalization(.none)
                }
            }
            
            if let error = error {
                Text(error)
                    .foregroundColor(.red)
                    .font(.caption)
            }
        }
    }
}

struct SignupScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignupScreen()
    }
}
