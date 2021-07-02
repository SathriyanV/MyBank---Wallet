//
//  SignUP.swift
//  MyBank
//
//  Created by Sathriyan on 30/06/21.
//

import SwiftUI

struct SignUP: View {
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = true
    
    @State var name : String = ""
    @State var mail : String = ""
    @State var password : String = ""
    @State var mobileNumber : String = ""

    var body: some View {
        
        NavigationView {
            GeometryReader { geo in
            VStack {
                VStack {
                    VStack(spacing : geo.size.height * 0.018) {
                        Text("Sign Up")
                            .font(Font.system(size: geo.size.height * 0.045))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.13)
                            .padding(.leading, geo.size.width * 0.07)
                        
                        Text("Please enter your Email and Password")
                            .font(Font.system(size: geo.size.height * 0.02))
                            .fontWeight(.semibold)
                            .disableAutocorrection(true)
                            .foregroundColor(Color("DividerColor"))
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.07)
                            .padding(.trailing, geo.size.width * 0.2)
                            .lineSpacing(geo.size.height * 0.005)
                    }
                    
                    VStack(spacing : geo.size.height * 0.026){
                        
                        VStack(spacing : geo.size.height * 0.026) {
                            
                            TextField("Name", text: $name)
                                .font(Font.system(size: geo.size.height * 0.022))
                                .disableAutocorrection(true)
                                .padding(.leading, geo.size.width * 0.035)
                                .frame(width : geo.size.width * 0.85, height: geo.size.height * 0.065)
                                .background(Color.white)
                                .cornerRadius(geo.size.width * 0.03)
                                .shadow(radius: 1.2)
                            
                            TextField("Email", text: $mail)
                                .font(Font.system(size: geo.size.height * 0.022))
                                .padding(.leading, geo.size.width * 0.035)
                                .frame(width : geo.size.width * 0.85, height: geo.size.height * 0.065)
                                .background(Color.white)
                                .cornerRadius(geo.size.width * 0.03)
                                .shadow(radius: 1.2)
                            
                            
                            SecureField("Mobile Number", text: $mobileNumber)
                                .font(Font.system(size: geo.size.height * 0.022))
                                .padding(.leading, geo.size.width * 0.035)
                                .frame(width : geo.size.width * 0.85, height: geo.size.height * 0.065)
                                .background(Color.white)
                                .cornerRadius(geo.size.width * 0.03)
                                .shadow(radius: 1.2)
                            
                            SecureField("Password", text: $password)
                                .font(Font.system(size: geo.size.height * 0.022))
                                .padding(.leading, geo.size.width * 0.035)
                                .frame(width : geo.size.width * 0.85, height: geo.size.height * 0.065)
                                .background(Color.white)
                                .cornerRadius(geo.size.width * 0.03)
                                .shadow(radius: 1.2)
                        }
                        NavigationLink(destination:
                                        ContentView()
                                        .navigationBarBackButtonHidden(true)
                                        .navigationBarHidden(true)) {
                            Text("Sign Up")
                                .font(Font.system(size: geo.size.height * 0.027))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width : geo.size.width * 0.7, height: geo.size.height * 0.065)
                                .background(Color("CardBg"))
                                .cornerRadius(geo.size.width * 0.03)
                                .opacity(0.9)
                                .padding(.top , geo.size.height * 0.05)
                        }
                        
                        Spacer()
                            .frame(height : geo.size.height * 0.05)
                        VStack{
                            
                            HStack {
                                Text("Have an account ?")
                                    .font(Font.system(size: geo.size.height * 0.02))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("DividerColor"))
                                
                                NavigationLink(
                                    destination: SignIn()
                                        .navigationBarHidden(true)
                                        .navigationBarBackButtonHidden(true),
                                    label: {
                                        Text("Sign In")
                                            .font(Font.system(size: geo.size.height * 0.025))
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("CardBg"))
                                    })
                            }
                        }
                        .padding(.top , geo.size.height * 0.05)
                        .padding(.bottom , geo.size.height * 0.05)
                        .frame(maxWidth : .infinity, alignment: .center)
                    }
                    .frame(maxWidth : .infinity, alignment: .leading)
//                        .padding(.leading, geo.size.width * 0.07)
                    .padding(.top , geo.size.height * 0.045)
                }
            }
            .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .top)
        }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea(.keyboard)
            .navigationBarHidden(true)
            
    }
    }
}

struct SignUP_Previews: PreviewProvider {

    static var previews: some View {
        SignUP()
    }
}
