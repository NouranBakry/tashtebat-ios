import SwiftUI

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var emailError: String? = nil
    @State private var password: String = ""
    @State private var isLoading = false
    @State private var errorMessage: String?
    
    @AppStorage("isLoggedIn") var storedIsLoggedIn = false

    var loginAction: () -> Void = { }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        // MARK: - Header
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Log in")
                                .font(.custom("Alexandria", size: 24))
                                .foregroundColor(.black)
                            
                            Text("Welcome back!")
                                .font(.custom("Alexandria", size: 13).weight(.light))
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 32)
                        .padding(.top, 80)
                        
                        // MARK: - Email
                        VStack(alignment: .leading, spacing: 4) {
                            TextField("Email", text: $email, prompt: Text("Email").foregroundColor(.gray))
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
                        .padding(.horizontal, 32)
                        
                        // MARK: - Password
                        SecureField("Password", text: $password, prompt: Text("Password").foregroundColor(.gray))
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .autocapitalization(.none)
                            .padding(.horizontal, 32)
                        
                        // MARK: - Forgot Password
                        NavigationLink(destination: ForgotPasswordScreen()) {
                            Text("Forgot your password?")
                                .font(.custom("Alexandria", size: 13).weight(.light))
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.horizontal, 32)
                        
//                        // MARK: - Social Login Label
//                        Text("Or log in with")
//                            .font(.custom("Alexandria", size: 11).weight(.light))
//                            .foregroundColor(.black)
//                            .padding(.top, 20)
//                        
//                        Spacer().frame(height: 40)
                        
                        // MARK: - Login Button
                        HorizontalButton(
                            title: isLoading ? "Logging in..." : "Log in",
                            action: handleLogin
                        )
                        .disabled(isLoading)
                        .padding(.horizontal, 32)
                        
                        // Hidden Navigation Trigger

                        NavigationLink(destination: HomeScreen(), isActive: $storedIsLoggedIn) {
                            EmptyView()
                        }.hidden()
                        
                        // MARK: - Terms
                        Text("By using our services, you agree to the Terms and Privacy Policy")
                            .font(.custom("Alexandria", size: 11).weight(.light))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                            .padding(.top, 8)
                        
                        // MARK: - Signup
                        HStack {
                            Text("Don’t have an account?")
                                .font(.custom("Alexandria", size: 13).weight(.light))
                                .foregroundColor(.black)
                            
                            NavigationLink(destination: SignupScreen()) {
                                Text("Sign up")
                                    .font(.custom("Alexandria", size: 13))
                                    .foregroundColor(.orange)
                            }
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 40)
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    // MARK: - Email Validation
    func validateEmail(_ value: String) {
        if value.isEmpty {
            emailError = "Email cannot be empty."
        } else if !value.contains("@") {
            emailError = "Please enter a valid email."
        } else {
            emailError = nil
        }
    }
    
    // MARK: - Login Logic
    private func handleLogin() {
        isLoading = true
        errorMessage = nil
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Please fill in all fields."
            isLoading = false
            return
        }
        
        AuthenticationService.shared.login(email: email, password: password) { success, error in
            DispatchQueue.main.async {
                isLoading = false
                if success {
                    print("✅ Login successful!")
                    storedIsLoggedIn = true
                } else {
                    errorMessage = error ?? "Login failed. Please try again."
                }
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
