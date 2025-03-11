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
    @State private var isSignedUp = false // Track sign-up completion
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
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
                    
                    // Name Input
                    VStack(alignment: .leading, spacing: 4) {
                        TextField("Name", text: $name, prompt: Text("Name").foregroundColor(.gray))
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .autocapitalization(.words)
                            .onChange(of: name, perform: validateName)
                        
                        if let error = nameError {
                            Text(error)
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                    }
                    
                    // Phone Number Input
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Image("egyptian flag")
                                .padding(.horizontal)
                                .frame(height: 44)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(12)
                            
                            TextField("Phone number", text: $phoneNumber)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(12)
                                .keyboardType(.numberPad)
                        }
                        
                        if let error = phoneNumberError {
                            Text(error)
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                    }
                    
                    // Email Input
                    VStack(alignment: .leading, spacing: 4) {
                        TextField("Email", text: $email, prompt:Text("Email").foregroundColor(Color.gray))
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .onChange(of: email, perform: validateEmail)
                        
                        if let error = emailError {
                            Text(error)
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                    }
                    
                    // Password
                    VStack(alignment: .leading, spacing: 4){
                        SecureField("Password", text: $password, prompt:Text("Password").foregroundColor(Color.gray))
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .autocapitalization(.none)
                    }
                    
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
                    // I accept all terms and conditions checkbox
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
                    // Sign up button
                    // Sign up button
                    HorizontalButton(title: isLoading ? "Signing up..." : "Sign up", action: handleSignUp)
                        .disabled(isLoading)
                        .padding(.top, 40)
                    // Hidden NavigationLink that activates when isSignedUp is true
                    NavigationLink(destination: HomeScreen(), isActive: $isSignedUp) {
                        EmptyView()
                    }
                    
                    // Sign up with Google button
                    Button(action: signUpAction) {
                        Image("google_signup")
                    }
                    // Sign up with facebook button
                    Button(action: signUpAction){
                        Image("facebook_signup")
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
            }
        }
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

struct SignupScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignupScreen()
    }
}
