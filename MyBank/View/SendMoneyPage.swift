//
//  SendMoneyPage.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct SendMoneyPage: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var sendBalance : Int
    
    @Binding var receiverName : String
    
    @State var balanceCheck : Int = 0
    
    @State var addMoney : String = ""
    
    @State var name : String = ""
    
    @State var accountNumber : String = ""
    
    @State var colorChange : Bool = false
    
    var body: some View {
        
        NavigationView {
            GeometryReader { geo in
                VStack {
                    
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                        HStack {
                            Image(systemName : "chevron.backward")
                            Text("My Card")
                        }
                        .frame(maxWidth : .infinity, alignment : .leading)
                        .padding(.leading, 15)
                        .padding(.top, 55)
                        
                    })
                    
                    VStack{
                        
                        Text("Send Money")
                            .foregroundColor(Color.black)
                            .font(Font.system(size: geo.size.width * 0.07))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.017)
                            .padding(.leading, geo.size.width * 0.065)
                    }
                    .padding(.top, geo.size.height * 0.005)
                    
                    VStack{
                        
                        VStack {
                            Text("To whom would you like to send")
                                .padding(.top, geo.size.height * 0.015)
                            
                            TextField("Enter Name", text: $name)
                                .padding(.leading, geo.size.width * 0.06)
                                .disableAutocorrection(true)
                                .font(Font.system(size: geo.size.width * 0.06))
                                .frame(maxWidth : .infinity, alignment: .center)
                                .frame(width : geo.size.width * 0.7, height: geo.size.width * 0.13)
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(geo.size.width * 0.015)
                                .padding(.top, geo.size.height * 0.01)
                            
                            TextField("Enter Account number", text: $accountNumber)
                                .padding(.leading, geo.size.width * 0.06)
                                .disableAutocorrection(true)
                                .font(Font.system(size: geo.size.width * 0.06))
                                .frame(maxWidth : .infinity, alignment: .center)
                                .frame(width : geo.size.width * 0.7, height: geo.size.width * 0.13)
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(geo.size.width * 0.015)
                                .padding(.top, geo.size.height * 0.01)
                        }
                       
                        VStack {
                            Text("How much would you like to send")
                                .padding(.top, geo.size.height * 0.02)
                            
                            TextField("Enter Amount", text: $addMoney)
                                .padding(.leading, geo.size.width * 0.12)
                                .disableAutocorrection(true)
                                .font(Font.system(size: geo.size.width * 0.06))
                                .frame(maxWidth : .infinity, alignment: .center)
                                .frame(width : geo.size.width * 0.6, height: geo.size.width * 0.13)
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(geo.size.width * 0.015)
                                .padding(.top, geo.size.height * 0.015)
                        }
                        
                        VStack{
                            
                            Text("or")
                                .font(Font.system(size: geo.size.height * 0.027))
                                .foregroundColor(.secondary)
                            
                            HStack(spacing : geo.size.width * 0.05){
                                
                                Button(action: {
                                    
                                    addMoney = "50"
                                    
                                }, label: {
                                Text("50")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                    
                                Button(action: {
                                    
                                    addMoney = "100"
                                    
                                }, label: {
                                Text("100")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                
                                Button(action: {
                                    
                                    addMoney = "500"
                                    
                                }, label: {
                                Text("500")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                   
                            }
                            .padding(.top , geo.size.height * 0.01)
                            
                            HStack(spacing : geo.size.width * 0.05){
                                
                                Button(action: {
                                    
                                    addMoney = "1000"
                                    
                                }, label: {
                                Text("1000")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                    
                                Button(action: {
                                    
                                    addMoney = "2500"
                                    
                                }, label: {
                                Text("2500")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                                })
                                
                                Button(action: {
                                    
                                    addMoney = "5000"
                                    
                                }, label: {
                                    Text("5000")
                                        .font(Font.system(size: geo.size.height * 0.027))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                        .background(Color.black.opacity(0.12))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                
                                   
                            }
                            .padding(.top , geo.size.height * 0.01)
                        }
                        .padding(.top , geo.size.height * 0.02)
                        
                        Button(action: {

                                sendBalance = Int(addMoney) ?? 1
                                receiverName = name
               
                        }, label: {
                            Text("Send Money")
                                .font(Font.system(size: geo.size.height * 0.027))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width : geo.size.width * 0.7, height: geo.size.height * 0.065)
                                .background(Color("CardBg"))
                                .cornerRadius(geo.size.width * 0.03)
                                .opacity(0.9)
                                .padding(.top , geo.size.height * 0.1)
                        })
                    }
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

struct SendMoneyPage_Previews: PreviewProvider {
    
    static var previews: some View {
        SendMoneyPage(sendBalance: .constant(0), receiverName: .constant(""))
    }
}
