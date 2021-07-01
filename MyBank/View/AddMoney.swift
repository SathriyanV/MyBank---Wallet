//
//  AddMoney.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct AddMoney: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var balanceAmount : Int = 2000
    
    @State var addMoney : String = ""
    
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
                        
                        Text("Add Money")
                            .foregroundColor(Color.black)
                            .font(Font.system(size: geo.size.width * 0.07))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.017)
                            .padding(.leading, geo.size.width * 0.065)
                        
                        Text("$ \(balanceAmount)")
                            .foregroundColor(.accentColor)
                            .font(Font.system(size: geo.size.width * 0.1))
                            .fontWeight(.bold)
                            .frame(maxWidth : .infinity, alignment: .center)
                            .padding(.top, geo.size.height * 0.02)
                        
                        Text("currently in your wallet")
                            .foregroundColor(.secondary)
                            .font(Font.system(size: geo.size.width * 0.035))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .center)
                            .padding(.top, geo.size.height * 0.001)
                        
                    }
                    .padding(.top, geo.size.height * 0.005)
                    
                    VStack{
                       
                        Text("How much would you like to add")
                            .padding(.top, geo.size.height * 0.03)
                        
                        TextField("Enter Amount", text: $addMoney)
                            .padding(.leading, geo.size.width * 0.12)
                            .disableAutocorrection(true)
                            .font(Font.system(size: geo.size.width * 0.06))
                            .frame(maxWidth : .infinity, alignment: .center)
                            .frame(width : geo.size.width * 0.6, height: geo.size.width * 0.13)
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(geo.size.width * 0.015)
                            .padding(.top, geo.size.height * 0.02)
                            
                        
                        VStack{
                            
                            Text("or")
                                .font(Font.system(size: geo.size.height * 0.027))
                                .foregroundColor(.secondary)
                            
                            HStack(spacing : geo.size.width * 0.05){
                                
                                Button(action: {}, label: {
                                Text("50")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                    
                                Button(action: {}, label: {
                                Text("100")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                
                                Button(action: {}, label: {
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
                                
                                Button(action: {}, label: {
                                Text("500")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                            })
                                    
                                Button(action: {}, label: {
                                Text("1000")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                    .background(Color.black.opacity(0.12))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .opacity(0.9)
                                })
                                
                                Button(action: {}, label: {
                                    Text("2500")
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
                        
                        Button(action: {}, label: {
                            Text("Add Money")
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

struct AddMoney_Previews: PreviewProvider {
    static var previews: some View {
        AddMoney()
    }
}
