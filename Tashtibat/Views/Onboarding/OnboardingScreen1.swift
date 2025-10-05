import SwiftUI

struct OnboardingScreen1: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                // Background ellipse + image
                VStack {
                    ZStack {
                        Ellipse()
                            .fill(AppColor.primary100)
                            .frame(width: 513, height: 515)
                            .offset(x: 2, y: -204.5)
                        
                        Image("plant")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .offset(y: -50)
                    }
                    .frame(width: 513, height: 515)
                    
                    VStack(spacing: 8) {
                        Text("Seamless Shopping")
                            .font(AppTypography.Title())
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        
                        Text("OnboardingScreen1 Paragraph")
                            .font(AppTypography.BodyLight())
                            .foregroundColor(AppColor.grey900)
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 280)
                    .padding(.bottom, 40)
                    
                    // Buttons pinned at bottom
                    HStack() {
                        Button(action: { hasSeenOnboarding = true }) {
                            Text("Skip")
                                .font(AppTypography.Body())
                                .foregroundColor(AppColor.primary500)
                        }
                        Spacer()
                        HStack(alignment: .top, spacing: 7) {
                            Image("Frame 52478")
                                .resizable()
                                .scaledToFit()
                        }
                        .frame(width: 50, height: 6)
                        Spacer()
                        NavigationLink(destination: OnboardingScreen2()) {
                            Image("onboarding_next_button")
                        }
                    }
                    .frame(width: 343, height: 48);
                }
            }
        }
    }
}

struct OnboardingScreen1_previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen1()
    }
}
