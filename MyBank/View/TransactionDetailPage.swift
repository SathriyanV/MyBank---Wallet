//
//  TransactionDetailPage.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct TransactionDetailPage: View {
    
    @State var balanceAmount : Int = 2000
    
    @State var name : String = "Sathriyan"
    
    @State var accountNumber : String = "123597CYTH00"
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    VStack {
                        Text("Transaction Detail")
                            .foregroundColor(Color("CardBg"))
                            .font(Font.system(size: geo.size.width * 0.07))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.05)
                            .padding(.leading, geo.size.width * 0.065)
                    }
                    
                    VStack{
                        
                        HStack{
                            
                            Text("\(balanceAmount)")
                                .foregroundColor(.black)
                                .font(Font.system(size: geo.size.width * 0.07))
                                .fontWeight(.semibold)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading, geo.size.width
                                            * 0.04)
                                
                            Text("$")
                                .font(Font.system(size: geo.size.width * 0.07))
                                .frame(maxWidth : .infinity, alignment: .leading)
                            
                            Text("Debited")
                                .foregroundColor(.red)
                                .font(Font.system(size: geo.size.width * 0.06))
                                .fontWeight(.semibold)
                                .frame(maxWidth : .infinity, alignment: .leading)

                                   
                        }
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.vertical, geo.size.height
                                    * 0.02)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(geo.size.width * 0.015)
                        .padding(.top, geo.size.height * 0.02)
                        .padding(.bottom, geo.size.height
                                    * 0.01)
                        .padding(.horizontal, geo.size.width
                                    * 0.06)
                        
                        Text("From")
                            .foregroundColor(Color.black)
                            .font(Font.system(size: geo.size.width * 0.055))
//                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.01)
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
                                    
                                    HStack {
                                        VStack{
                                        
                                            Text("Account Number")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.04))
                                                .fontWeight(.semibold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                                .padding(.top, geo.size.height * 0.065)
                                            
                                            Text("09876543XXYY")
                                                .foregroundColor(.white)
                                                .font(Font.system(size: geo.size.width * 0.043))
                                                .fontWeight(.bold)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.139)
                                                .padding(.top, geo.size.height * 0.001)
                                        }
                                    }
                                }
                            }
                        }
                        
                        Text("To")
                            .foregroundColor(Color.black)
                            .font(Font.system(size: geo.size.width * 0.055))
//                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.01)
                            .padding(.leading, geo.size.width * 0.065)
                        
                        VStack{
                            
                            HStack (spacing : geo.size.width * 0.01){
                                
                                VStack (spacing : geo.size.height * 0.01){
                                    Text(name)
                                        .foregroundColor(.secondary)
                                        .font(Font.system(size: geo.size.width * 0.055))
                                        .fontWeight(.semibold)
                                        .frame(maxWidth : .infinity, alignment: .leading)
                                        .padding(.leading, geo.size.width
                                                * 0.04)
                                    
                                    Text(accountNumber)
                                        .foregroundColor(.secondary)
                                        .font(Font.system(size: geo.size.width * 0.055))
                                        .fontWeight(.semibold)
                                        .frame(maxWidth : .infinity, alignment: .leading)
                                        .padding(.leading, geo.size.width
                                                * 0.04)
                                    
                                }
                                
                                Image("meditate-5353620_1280")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .mask(Circle())
                                    .frame(width : geo.size.width * 0.15, height: geo.size.width * 0.16)
                                    .padding(.trailing, geo.size.width * 0.07)
                                    .shadow(radius: 1)
                                       
                            }
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.vertical, geo.size.height
                                        * 0.02)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(geo.size.width * 0.015)
                            .padding(.vertical, geo.size.height
                                        * 0.01)
                            .padding(.horizontal, geo.size.width
                                        * 0.06)
                           
                        }
                    }
                }
                .frame(maxWidth : .infinity, maxHeight: .infinity , alignment: .top)

            }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
}

struct TransactionDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailPage()
    }
}
