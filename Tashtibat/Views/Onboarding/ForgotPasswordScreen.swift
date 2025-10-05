import SwiftUI

struct ForgotPasswordScreen: View {
    @Environment(\.dismiss) private var dismiss
    var sendCodeAction: () -> Void = {}

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 56) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Forgot Password")
                        .font(Font.custom("Alexandria", size: 24))
                        .foregroundColor(.black)

                    Text("Enter the phone number associated with your account")
                        .font(Font.custom("Alexandria", size: 13).weight(.light))
                        .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                }

                VStack {
                    Image("phone_verify_icon")
                }
                //TODO: change to input + verify
                VStack {
                    Image("phone_eg_input")
                }
                // TODO: Implement send code
                HorizontalButton(title: "Send Verification Code", action: sendCodeAction)
            }
            .padding(24)
        }
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}

struct ForgotPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ForgotPasswordScreen()
        }
    }
}
