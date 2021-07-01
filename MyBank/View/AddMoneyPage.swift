//
//  AddMoneyPage.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct MyCardPage: View {
    
    @State var balanceAmount : Int = 2000
    
    @State var showSheet : Bool = false
    
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    Text("My Card")
                        .foregroundColor(Color.black)
                        .font(Font.system(size: geo.size.width * 0.07))
                        .fontWeight(.semibold)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.top, geo.size.height * 0.06)
                        .padding(.leading, geo.size.width * 0.065)
                    
                    VStack{
                        
                        ZStack{
                            
                            Color("CardBg")
                                .opacity(0.85)
                                .frame(width : geo.size.width * 0.88, height: geo.size.height * 0.25)
                                .cornerRadius(geo.size.width * 0.02)
                            
                            VStack {
                                HStack {
                                    Text("My Card")
                                        .foregroundColor(.white)
                                        .font(Font.system(size: geo.size.width * 0.055))
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
                                
                               
                                HStack {
                                    
                                    VStack (spacing : geo.size.height * 0.009){
                                        Text("Account Number")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.04))
                                                .fontWeight(.semibold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                            .padding(.top, geo.size.height * 0.065)
                                        
                                        Text("012345678XY")
                                            .foregroundColor(.white)
                                            .font(Font.system(size: geo.size.width * 0.05))
                                            .fontWeight(.bold)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading, geo.size.width * 0.139)
                                    }
                                    
                                    VStack (spacing : geo.size.height * 0.009){
                                        Text("Balance")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.04))
                                                .fontWeight(.semibold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                            .padding(.top, geo.size.height * 0.065)
                                        
                                        Text("$ \(balanceAmount)")
                                            .foregroundColor(.white)
                                            .font(Font.system(size: geo.size.width * 0.043))
                                            .fontWeight(.bold)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading, geo.size.width * 0.139)
                                    }
                                }
                                
                            }
                        }
                        
                    }
                    
                    VStack{
                        Button(action: {
                            
                            showSheet.toggle()
                            
                        }, label: {
                            Text("Add Money")
                                .font(Font.system(size: geo.size.height * 0.027))
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(width : geo.size.width * 0.65, height: geo.size.height * 0.07)
                                .background(Color.black.opacity(0.12))
                                .cornerRadius(geo.size.width * 0.03)
                                .opacity(0.9)
                                .padding(.top , geo.size.height * 0.05)
                        })
                        .sheet(isPresented: $showSheet, content: {
                            TransactionDetailPage()
                        })
                        
                    }
                }
                .frame(maxWidth : .infinity, maxHeight: .infinity , alignment: .top)
            }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }
    }
}

struct AddMoneyPage_Previews: PreviewProvider {
    static var previews: some View {
        MyCardPage()
    }
}
