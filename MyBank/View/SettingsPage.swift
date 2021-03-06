//
//  ProfilePage.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct SettingsPage: View {
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    VStack {
                        
                        Text("Settings")
                            .foregroundColor(Color("CardBg"))
                            .font(Font.system(size: geo.size.width * 0.075))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.08)
                            .padding(.leading, geo.size.width * 0.0556)
                        
                    }
                    
                    Text("GENERAL")
                        .font(Font.system(size: geo.size.width * 0.045))
                        .foregroundColor(.secondary)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.leading, geo.size.width * 0.06)
                        .padding(.top, geo.size.height * 0.02)
                    
                    VStack{
                        VStack(spacing : geo.size.height * 0.02){
                            
                            NavigationLink(destination: PersonalInfo()) {
                                HStack {
                                    Image(systemName: "person")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                        .padding(.leading, geo.size.width * 0.015)
                                    
                                    Text("Personal Information")
                                        .font(Font.system(size: geo.size.width * 0.048))
                                        .foregroundColor(.black)
                                        .padding(.leading, geo.size.width * 0.03)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.02)
                                        .padding(.trailing, geo.size.width * 0.05)
                                }
                            }
                           
                            Divider()
                            
                            NavigationLink(destination: NotificationPage()) {
                            HStack {
                                
                                Image(systemName: "bell")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                    .padding(.leading, geo.size.width * 0.015)
                                
                                Text("Notifications")
                                    .font(Font.system(size: geo.size.width * 0.048))
                                    .foregroundColor(.black)
                                    .padding(.leading, geo.size.width * 0.03)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.02)
                                    .padding(.trailing, geo.size.width * 0.05)
                            }
                            }
                            
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.04)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.vertical, geo.size.height * 0.009)
                        .padding(.horizontal, geo.size.width * 0.05)
                        
                    }
                    .frame(maxWidth : .infinity, alignment: .center)
                    
                    Text("BANKING")
                        .font(Font.system(size: geo.size.width * 0.045))
                        .foregroundColor(.secondary)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.leading, geo.size.width * 0.06)
                        .padding(.top, geo.size.height * 0.02)
                    
                    VStack{
                        VStack(spacing : geo.size.height * 0.02){
                            
                            NavigationLink(destination: PaymentPreferencePage()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true)
                            ) {
                            HStack {
                                
                                Image(systemName: "dollarsign.square")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                    .padding(.leading, geo.size.width * 0.015)
                                
                                Text("Payment Preferences")
                                    .font(Font.system(size: geo.size.width * 0.048))
                                    .foregroundColor(.black)
                                    .padding(.leading, geo.size.width * 0.03)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.02)
                                    .padding(.trailing, geo.size.width * 0.05)
                            }
                            }
                            
                            Divider()
                            
                            NavigationLink(destination: BanksAndCards()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true)) {
                            HStack {
                                
                                Image(systemName: "creditcard")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                    .padding(.leading, geo.size.width * 0.015)
                                
                                Text("Banks and Cards")
                                    .font(Font.system(size: geo.size.width * 0.048))
                                    .foregroundColor(.black)
                                    .padding(.leading, geo.size.width * 0.03)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.02)
                                    .padding(.trailing, geo.size.width * 0.05)
                            }
                            }
                            
                            Divider()
                            
                            NavigationLink(destination: LoanDocumentsPage()) {
                            HStack {
                                
                                Image(systemName: "doc")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                    .padding(.leading, geo.size.width * 0.015)
                                
                                Text("Loan Documents")
                                    .font(Font.system(size: geo.size.width * 0.048))
                                    .foregroundColor(.black)
                                    .padding(.leading, geo.size.width * 0.03)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.02)
                                    .padding(.trailing, geo.size.width * 0.05)
                            }
                            }
                            
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.04)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.vertical, geo.size.height * 0.009)
                        .padding(.horizontal, geo.size.width * 0.05)
                        
                    }
                    .frame(maxWidth : .infinity, alignment: .center)
                    
                    Text("APP INFO")
                        .font(Font.system(size: geo.size.width * 0.045))
                        .foregroundColor(.secondary)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.leading, geo.size.width * 0.06)
                        .padding(.top, geo.size.height * 0.02)
                       
                    
                    VStack{
                        VStack(spacing : geo.size.height * 0.025){
                            
                            NavigationLink(destination: AboutPage()) {
                            HStack {
                                
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                    .padding(.leading, geo.size.width * 0.015)
                                
                                Text("About")
                                    .font(Font.system(size: geo.size.width * 0.048))
                                    .foregroundColor(.black)
                                    .padding(.leading, geo.size.width * 0.03)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.02)
                                    .padding(.trailing, geo.size.width * 0.05)
                            }
                            }
                            
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.04)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.vertical, geo.size.height * 0.009)

                        
                    }
                    .frame(maxWidth : .infinity, alignment: .center)
                  
                    Button(action: {
                        
                        isLoggedIn.toggle()
                        
                    }, label: {
                            Text("Log out")
                                        .font(Font.system(size: geo.size.height * 0.027))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width : geo.size.width * 0.7, height: geo.size.height * 0.065)
                                        .background(Color("CardBg"))
                                        .cornerRadius(geo.size.width * 0.03)
                                        .opacity(0.9)
                            .padding(.top , geo.size.height * 0.05)
                    })
                }
                .frame(maxWidth : .infinity, maxHeight: .infinity , alignment: .top)
            }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.top)
            .ignoresSafeArea(.keyboard)
            .navigationBarHidden(true)
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
