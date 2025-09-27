import SwiftUI

struct LoginScreen : View {
    
    @State private var email: String = ""
    @State private var emailError: String? = nil
    @State private var password: String = ""
    @State private var isLoading = false
    @State private var isLoggedIn = false
    @State private var errorMessage: String?
    
    var loginAction: () -> Void = { }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Log in")
                            .font(.custom("Alexandria", size: 24))
                            .foregroundColor(.black)
                        Text("Welcome back!")
                            .font(.custom("Alexandria", size: 13).weight(.light))
                            .foregroundColor(Color.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 32)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        TextField("Email", text: $email, prompt: Text("Email").foregroundColor(Color.gray))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .onChange(of: email, perform: validateEmail)
                            .padding(.horizontal, 32)
                        
                        if let error = emailError {
                            Text(error)
                                .foregroundColor(.red)
                                .font(.caption)
                                .padding(.horizontal, 32)
                        }
                    }
                    
                    // Password
                    VStack(alignment: .leading, spacing: 4){
                        SecureField("Password", text: $password, prompt:Text("Password").foregroundColor(Color.gray))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(12)
                            .autocapitalization(.none)
                            .padding(.horizontal, 32)

                    }
                    
                    NavigationLink(destination: ForgotPasswordScreen()) {
                        Text("Forgot your password?")
                            .font(.custom("Alexandria", size: 13).weight(.light))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 32)
                    
                    HStack(spacing: 16) {
                        Text("Or Log in with")
                            .font(.custom("Alexandria", size: 11).weight(.light))
                            .foregroundColor(.black)
                    }
                    .frame(width: 343, height: 15)
                    
//                    HStack {
//                        Button(action: {}) {
//                            Image("google_login")
//                        }
//                    }
                    
//                    HStack {
//                        Button(action: {}) {
//                            Image("facebook_login")
//                        }
//                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Don’t have an account ?")
                            .font(.custom("Alexandria", size: 13).weight(.light))
                            .foregroundColor(.black)
                        NavigationLink(destination: SignupScreen()) {
                            Text("Sign up")
                                .font(.custom("Alexandria", size: 13))
                                .foregroundColor(Color.orange)
                        }
                    }
                    .padding(.horizontal, 32)
                    
                    VStack {
                        HorizontalButton(title: isLoading ? "Logging in..." : "Log in", action: handleLogin)
                            .disabled(isLoading)
                        
                        NavigationLink(destination: HomeScreen(), isActive: $isLoggedIn) {
                            EmptyView()
                        }
                        .hidden()
                        
                        Text("By using our services, you agree to the Terms and Privacy Policy")
                            .font(.custom("Alexandria", size: 11).weight(.light))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 32)
                }
            }
        }
    }
    
    func validateEmail(_ value: String) {
        if value.isEmpty {
            emailError = "Email cannot be empty."
        } else if !value.contains("@") {
            emailError = "Please enter a valid email."
        } else {
            emailError = nil
        }
    }
    
    
    private func handleLogin() {
        isLoading = true
        errorMessage = nil
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Please fill in all fields."
            isLoading = false
            return
        }
        
        AuthenticationService.shared.login(email: email, password: password) { success, error in
            DispatchQueue.main.async{
                isLoading = false
                if success {
                    print("✅ Login successful!")
                    isLoggedIn = true
                } else {
                    errorMessage = error ?? "Login failed. Please try again."
                }
            }
        }
    }
}


struct LoginScreen_previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
