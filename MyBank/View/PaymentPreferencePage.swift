//
//  PaymentPreferencePage.swift
//  MyBank
//
//  Created by Sathriyan on 02/07/21.
//

import SwiftUI

struct PaymentPreferencePage: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            GeometryReader { geo in
                VStack {
                    
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                        HStack {
                            Image(systemName : "chevron.backward")
                            Text("MyBank")
                        }
                        .frame(maxWidth : .infinity, alignment : .leading)
                        .padding(.leading, 15)
                        .padding(.top, 55)
                        
                    })
                    
                    Text("Payment Preference")
                        .foregroundColor(Color("CardBg"))
                        .font(Font.system(size: geo.size.width * 0.075))
                        .fontWeight(.semibold)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.top, geo.size.height * 0.01)
                        .padding(.leading, geo.size.width * 0.0556)
                    VStack{
                        
                        VStack{
                            Text("Beneficary Details")
                                .font(Font.system(size: geo.size.width * 0.045))
                                .foregroundColor(.secondary)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading, geo.size.width * 0.06)
                                .padding(.top, geo.size.height * 0.015)
                            
                            HStack {
                                
                                
                                NavigationLink(destination: Text("Name 1")) {
                                    
                                    Text("Name 1")
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
                            .padding(.vertical, geo.size.height * 0.02)
                            .padding(.leading, geo.size.width * 0.025)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .frame(width : geo.size.width * 0.88)
                            .background(Color.white)
                            .cornerRadius(geo.size.width * 0.02)
                            .padding(.top, geo.size.height * 0.001)
                            
                            HStack {
                                
                                
                                NavigationLink(destination: Text("Name 2")) {
                                    
                                    Text("Name 2")
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
                            .padding(.vertical, geo.size.height * 0.02)
                            .padding(.leading, geo.size.width * 0.025)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .frame(width : geo.size.width * 0.88)
                            .background(Color.white)
                            .cornerRadius(geo.size.width * 0.02)
                            .padding(.top, geo.size.height * 0.001)
                            
                            
                            HStack {
                                
                                
                                NavigationLink(destination: Text("Name 3")) {
                                    
                                    Text("Name 3")
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
                            .padding(.vertical, geo.size.height * 0.02)
                            .padding(.leading, geo.size.width * 0.025)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .frame(width : geo.size.width * 0.88)
                            .background(Color.white)
                            .cornerRadius(geo.size.width * 0.02)
                            .padding(.top, geo.size.height * 0.001)
                            
                        }
                        
                    }
                }
                .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .top)
            }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.top)
            .ignoresSafeArea(.keyboard)
            .navigationBarHidden(true)
        }
        
    }
}

struct PaymentPreferencePage_Previews: PreviewProvider {
    static var previews: some View {
        PaymentPreferencePage()
    }
}
