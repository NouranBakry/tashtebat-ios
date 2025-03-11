//
//  Profile.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 10/02/2025.
//

import SwiftUI

struct Profile : View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all) // Extend to cover safe areas
            VStack {
                // Profile
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(Font.custom("Alexandria", size: 20))
                        .lineSpacing(28)
                        .foregroundColor(.black)
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                // user name and email
                // TODO: profile pic
                VStack(spacing: 4) {
                    Text("Marwan Magdy")
                        .font(Font.custom("Alexandria", size: 13))
                        .lineSpacing(18.20)
                        .foregroundColor(.black)
                    Text("marwanmagdy200@gmail.com")
                        .font(Font.custom("Alexandria", size: 11).weight(.light))
                        .lineSpacing(15.40)
                        .foregroundColor(.black)
                }
                
                // Personal data section
                VStack(alignment: .leading, spacing: 16) {
                  Text("Personal data")
                    .font(Font.custom("Alexandria", size: 13))
                    .lineSpacing(18.20)
                    .foregroundColor(.black)
                  VStack(alignment: .trailing, spacing: 8) {
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {
                              Image("EditProfile")
                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.92, green: 0.96, blue: 1))
                        .cornerRadius(8)
                        Text("Edit Profile")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -116.50, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 311, height: 0)
                      .overlay(
                        Rectangle()
                          .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                      )
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {
                              Image("SavedAddressesBtn")
                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.99, green: 0.95, blue: 0.97))
                        .cornerRadius(8)
                        Text("Saved Addresses")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -98.50, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 311, height: 0)
                      .overlay(
                        Rectangle()
                          .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                      )
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {
                              Image("MyOrdersBtn")
                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 1, green: 0.97, blue: 0.95))
                        .cornerRadius(8)
                        Text("My Orders")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -119, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                        // TODO: needs to be dynamic, this is just an example
                      HStack(spacing: 8) {
                        Text("3 Orders")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.white)
                      }
                      .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                      .background(Color(red: 1, green: 0.60, blue: 0))
                      .cornerRadius(50)
                      .overlay(
                        RoundedRectangle(cornerRadius: 50)
                          .inset(by: 0.50)
                          .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 0.50)
                      )
                      .offset(x: 92.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 311, height: 0)
                      .overlay(
                        Rectangle()
                          .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                      )
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {
                              Image("Returns Button")
                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.93, green: 0.98, blue: 0.98))
                        .cornerRadius(8)
                        Text("Returns")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -126.50, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                  }
                }
                .frame(width: 343, height: 242);
                
                // Settings section
                VStack(alignment: .leading, spacing: 16) {
                  Text("Settings")
                    .font(Font.custom("Alexandria", size: 13))
                    .lineSpacing(18.20)
                    .foregroundColor(.black)
                  VStack(alignment: .trailing, spacing: 8) {
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {
                              Image("NotificationsButton")
                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.96, green: 0.96, blue: 1))
                        .cornerRadius(8)
                        Text("Notifications")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -111, y: 0)
                      ZStack() {
                        ZStack() {

                        }
                        .frame(width: 24, height: 24)
                        .offset(x: 0, y: 0)
                      }
                      .frame(width: 32, height: 32)
                      .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                      .cornerRadius(8)
                      .offset(x: -115.50, y: 56)
                      HStack(spacing: 0) {
                        ZStack() {
                          HStack(spacing: 0) {
                            VStack(spacing: 8) {
                              HStack(spacing: 0) {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 2, height: 2)
                                  .cornerRadius(23)
                              }
                              .padding(11)
                              .background(.white)
                              .cornerRadius(24)
                            }
                            .padding(8)
                            .cornerRadius(100)
                          }
                          .padding(4)
                          .offset(x: 10, y: 0)
                        }
                        .frame(width: 44, height: 28)
                      }
                      .padding(EdgeInsets(top: 2, leading: 4, bottom: 2, trailing: 4))
                      .frame(width: 52, height: 32)
                      .background(Color(red: 1, green: 0.60, blue: 0))
                      .cornerRadius(100)
                      .offset(x: 145.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 311, height: 0)
                      .overlay(
                        Rectangle()
                          .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                      )
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {

                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.94, green: 0.96, blue: 1))
                        .cornerRadius(8)
                        Text("Language")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -120, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                      ZStack() {
                        ZStack() {

                        }
                        .frame(width: 24, height: 24)
                        .offset(x: 0, y: 0)
                      }
                      .frame(width: 32, height: 32)
                      .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                      .cornerRadius(8)
                      .offset(x: -115.50, y: 56)
                      HStack(spacing: 8) {
                        Text("English")
                          .font(Font.custom("Alexandria", size: 11).weight(.light))
                          .lineSpacing(15.40)
                          .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                      }
                      .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                      .cornerRadius(50)
                      .overlay(
                        RoundedRectangle(cornerRadius: 50)
                          .inset(by: 0.50)
                          .stroke(Color(red: 0.28, green: 0.28, blue: 0.28), lineWidth: 0.50)
                      )
                      .offset(x: 103.50, y: -0.50)
                    }
                    .frame(width: 343, height: 40)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 311, height: 0)
                      .overlay(
                        Rectangle()
                          .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                      )
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {

                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.99, green: 0.95, blue: 0.97))
                        .cornerRadius(8)
                        Text("Help")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -136, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 311, height: 0)
                      .overlay(
                        Rectangle()
                          .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                      )
                    ZStack() {
                      HStack(spacing: 8) {
                        ZStack() {
                          ZStack() {

                          }
                          .frame(width: 24, height: 24)
                          .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.92, green: 0.96, blue: 1))
                        .cornerRadius(8)
                        Text("Contact us")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(.black)
                      }
                      .offset(x: -117.50, y: 0)
                      ZStack() {

                      }
                      .frame(width: 24, height: 24)
                      .offset(x: 159.50, y: 0)
                    }
                    .frame(width: 343, height: 40)
                  }
                }
                .frame(width: 343, height: 242);
                
                // Log out section
                VStack(alignment: .leading, spacing: 16){
                    ZStack() {
                      HStack(spacing: 8) {
                          ZStack(){
                              Image("logout")
                          }
                          .frame(width: 24, height: 24)
                        Text("Log out")
                          .font(Font.custom("Alexandria", size: 13).weight(.light))
                          .lineSpacing(18.20)
                          .foregroundColor(Color(red: 0.86, green: 0.21, blue: 0.27))
                      }
                      .offset(x: -131.50, y: 0)
                    }
                    .frame(width: 343, height: 40);

                }
                
                ZStack() {
                  ZStack() {
                      Image("CartButtonNav")
                  }
                  .frame(width: 24, height: 24)
                  .offset(x: 0, y: 0)
                }
                .frame(width: 56, height: 56)
                .background(Color(red: 1, green: 0.92, blue: 0.80))
                .cornerRadius(50);
            }
        }
    }
}

struct Profile_previews: PreviewProvider{
    static var previews: some View{
        Profile()
    }
}
