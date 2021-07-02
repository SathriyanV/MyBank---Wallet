//
//  BanksAndCards.swift
//  MyBank
//
//  Created by Sathriyan on 02/07/21.
//

import SwiftUI

struct BanksAndCards: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var balanceAmount : Int = 200
    
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
                    
                    Text("Banks and Cards")
                        .foregroundColor(Color("CardBg"))
                        .font(Font.system(size: geo.size.width * 0.075))
                        .fontWeight(.semibold)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.top, geo.size.height * 0.01)
                        .padding(.leading, geo.size.width * 0.0556)
                    
                        Text("My Cards")
                            .font(Font.system(size: geo.size.width * 0.052))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.065)
                            .padding(.top, geo.size.height * 0.02)
                        
                       
                            VStack {
                                
                                ZStack {
                                    NavigationLink(
                                        destination: Text("My Card 1"),
                                        label: {
                                    Color("CardBg")
                                        .opacity(0.85)
                                        .frame(width : geo.size.width * 0.88, height: geo.size.height * 0.25)
                                        .cornerRadius(geo.size.width * 0.02)
                                        })
                                    
                                    VStack {
                                        HStack {
                                            Text("My Card 1")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.05))
                                                .fontWeight(.semibold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                            
                                            ZStack {
                                                Color("BgColor")
                                                    .frame(width : geo.size.width * 0.095, height : geo.size.width * 0.095)
                                                    .mask(Circle())
                                                    .opacity(0.7)
                                                    .frame(maxWidth : .infinity, alignment: .leading)
                                                    .shadow(radius: 1)
                                                
                                                Color("BgColor")
                                                    .frame(width : geo.size.width * 0.095, height : geo.size.width * 0.095)
                                                    .mask(Circle())
                                                    .opacity(0.7)
                                                    .frame(maxWidth : .infinity, alignment: .leading)
                                                    .offset(x : geo.size.width * 0.068)
                                                    .shadow(radius: 1)
                                            }
                                            .padding(.leading, geo.size.width * 0.19)
                                        }
                                        
                                       
                                            Text("BALANCE")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.04))
                                                .fontWeight(.semibold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                                .padding(.top, geo.size.height * 0.065)
                                        
                                        HStack{
                                            
                                            Text("$ \(balanceAmount)")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.05))
                                                .fontWeight(.bold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                                .padding(.top, geo.size.height * 0.009)
                                            
                                            Text("My Card")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.07))
                                                .fontWeight(.semibold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.085)
                                        }
                                    }
                                }
                            
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination: Text("My Card 2"),
                                    label: {
                                Color("ButtonColor")
                                    .opacity(0.7)
                                    .frame(width : geo.size.width * 0.88, height: geo.size.height * 0.25)
                                    .cornerRadius(geo.size.width * 0.02)
                                    })
                                
                                VStack {
                                    HStack {
                                        Text("My Card 2")
                                            .foregroundColor(.white)
                                            .font(Font.system(size: geo.size.width * 0.05))
                                            .fontWeight(.semibold)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading, geo.size.width * 0.139)
                                        
                                        ZStack {
                                            Color("BgColor")
                                                .frame(width : geo.size.width * 0.095, height : geo.size.width * 0.095)
                                                .mask(Circle())
                                                .opacity(0.7)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .shadow(radius: 1)
                                            
                                            Color("BgColor")
                                                .frame(width : geo.size.width * 0.095, height : geo.size.width * 0.095)
                                                .mask(Circle())
                                                .opacity(0.7)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .offset(x : geo.size.width * 0.068)
                                                .shadow(radius: 1)
                                        }
                                        .padding(.leading, geo.size.width * 0.19)
                                    }
                                    
                                   
                                        Text("BALANCE")
                                            .foregroundColor(.white)
                                            .font(Font.system(size: geo.size.width * 0.04))
                                            .fontWeight(.semibold)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading, geo.size.width * 0.139)
                                            .padding(.top, geo.size.height * 0.065)
                                    
                                    HStack{
                                        
                                        Text("$ \(balanceAmount)")
                                            .foregroundColor(.white)
                                            .font(Font.system(size: geo.size.width * 0.05))
                                            .fontWeight(.bold)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading, geo.size.width * 0.139)
                                            .padding(.top, geo.size.height * 0.009)
                                        
                                        Text("My Card")
                                            .foregroundColor(.white)
                                            .font(Font.system(size: geo.size.width * 0.07))
                                            .fontWeight(.semibold)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading, geo.size.width * 0.085)
                                    }
                                }
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

struct BanksAndCards_Previews: PreviewProvider {
    static var previews: some View {
        BanksAndCards()
    }
}
