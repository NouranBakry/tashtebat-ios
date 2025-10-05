import SwiftUI

struct Profile: View {
    @EnvironmentObject var userManager: UserManager
    @State private var isEnglish: Bool = true
    @State private var showCart: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background ScrollView
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        
                        // MARK: Profile Header
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Profile")
                                .font(.custom("Alexandria", size: 20))
                                .foregroundColor(.black)
                            
                            if let user = userManager.currentUser {
                                Text("\(user.first_name ?? "") \(user.last_name ?? "")")
                                    .font(.custom("Alexandria", size: 18))
                                Text(user.email ?? "")
                                    .font(.custom("Alexandria", size: 13))
                                    .foregroundColor(.gray)
                            } else {
                                Text("No user logged in")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        
                        // MARK: Personal Data Section
                        Section(header: Text("Personal Data")
                            .font(.custom("Alexandria", size: 13))
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        ) {
                            VStack(spacing: 0) {
                                NavigationLink(destination: EditProfile()) {
                                    ProfileRow(iconName: "EditProfile", title: "Edit Profile")
                                }
                                
                                NavigationLink(destination: SavedAddresses()) {
                                    ProfileRow(iconName: "SavedAddressesBtn", title: "Saved Addresses")
                                }
                                
                                NavigationLink(destination: MyOrders()) {
                                    ProfileRow(iconName: "MyOrdersBtn", title: "My Orders", badgeText: "3 Orders")
                                }
                                
                                ProfileRow(iconName: "Returns Button", title: "Returns")
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        
                        // MARK: Settings Section
                        Section(header: Text("Settings")
                            .font(.custom("Alexandria", size: 13))
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        ) {
                            VStack(spacing: 0) {
                                ProfileRow(iconName: "NotificationsButton", title: "Notifications")
                                
                                HStack {
                                    ProfileRow(iconName: "LanguageButton", title: "Language")
                                    Spacer()
                                    Toggle(isOn: $isEnglish) {
                                        Text(isEnglish ? "English" : "Arabic")
                                            .font(.custom("Alexandria", size: 11))
                                            .foregroundColor(.gray)
                                    }
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                }
                                .padding(.horizontal)
                                .frame(height: 50)
                                
                                ProfileRow(iconName: "HelpButton", title: "Help")
                                ProfileRow(iconName: "ContactUsButton", title: "Contact Us")
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        
                        // MARK: Logout Button
                        Button(action: {
                            userManager.logout()
                        }) {
                            HStack {
                                Image("logout")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("Log out")
                                    .font(.custom("Alexandria", size: 13))
                                    .foregroundColor(Color(red: 0.86, green: 0.21, blue: 0.27))
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        
                        Spacer(minLength: 80) // leave room for floating cart
                    }
                    .padding(.bottom, 16)
                }
                
                // MARK: Floating Cart Button
                // cart button
                VStack{
                    Spacer()
                    HStack {
                        Spacer() // push to right
                        CartButton(showCart: $showCart, itemCount: 0)
                            .frame(width: 56, height: 56)
                            .shadow(color: .gray.opacity(0.4), radius: 4, x: 2, y: 2)
                            .padding(.trailing, 16)
                            .padding(.bottom, 16) // above tab bar
                    }
                }
            }
            .navigationBarHidden(false)
            .toolbar(.visible, for: .tabBar)
            .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
            .navigationDestination(isPresented: $showCart) {
                CartScreen()
            }
        }
    }
}

// MARK: Reusable Profile Row
struct ProfileRow: View {
    var iconName: String
    var title: String
    var badgeText: String? = nil
    
    var body: some View {
        HStack {
            ZStack {
                Color.gray.opacity(0.1)
                    .frame(width: 32, height: 32)
                    .cornerRadius(8)
                Image(iconName)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Text(title)
                .font(.custom("Alexandria", size: 13).weight(.light))
                .foregroundColor(.black)
            
            Spacer()
            
            if let badge = badgeText {
                Text(badge)
                    .font(.custom("Alexandria", size: 11))
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.orange)
                    .cornerRadius(50)
            }
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(Color.white)
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96)),
            alignment: .bottom
        )
    }
}

// MARK: Preview
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        let previewUser = User(
            id: "1", email: "nouran@medusa.com",
            phone: "010488936",
            first_name: "Nouran",
            last_name: "Bakry"
        )
        Profile()
            .environmentObject(UserManager(previewUser: previewUser))
    }
}
