//
//  HomePage.swift
//  MyBank
//
//  Created by Sathriyan on 30/06/21.
//

import SwiftUI

struct HomePage: View {
    
    @State var balanceAmount : Int = 200
    
    @State var showSheet : Bool = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    
                    HStack {
                        
                        Spacer()
                            .frame(width : geo.size.width * 0.38)
                        
                        Text("MyBank")
                            .foregroundColor(Color("CardBg"))
                            .font(Font.system(size: geo.size.width * 0.065))
                            .fontWeight(.bold)
                            
                        
                        Spacer()
                        
                        Image("Sathriyan Image 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : geo.size.width * 0.11)
                            .padding(.trailing, geo.size.width * 0.06)
                            .shadow(radius: 1)
                    }
                    .padding(.top, geo.size.height * 0.05)
                    .frame(maxWidth : .infinity, alignment: .center)
                    
                    VStack(spacing : geo.size.height * 0.02){
                       
                            Text("MyBank Balance")
                                .font(Font.system(size: geo.size.width * 0.052))
                                .fontWeight(.semibold)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading, geo.size.width * 0.065)
                            
                        ZStack{
                            NavigationLink(
                                destination: MyCardPage()
                                    .navigationBarBackButtonHidden(true)
                                    .navigationBarHidden(true),
                                label: {
                                    Color("CardBg")
                                        .opacity(0.85)
                                        .frame(width : geo.size.width * 0.88, height: geo.size.height * 0.25)
                                        .cornerRadius(geo.size.width * 0.02)
                                })
                            
                            
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
                    .padding(.top, geo.size.height * 0.013)
                    
                    ScrollView (showsIndicators : false){
                        VStack{
                            
                            Text("Send Money")
                                .fontWeight(.semibold)
                                .font(Font.system(size: geo.size.width * 0.052))
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading, geo.size.width * 0.065)
                                .padding(.bottom, geo.size.height * 0.015)
                            
                            ScrollView(.horizontal, showsIndicators : false){
                                HStack(spacing : geo.size.width * 0.04){
                                    
                                    NavigationLink(
                                        destination: SendMoneyPage()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true),
                                        
                                        label: {
                                    VStack{
                                        Image(systemName: "arrow.right.circle")
                                            .resizable()
                                            .foregroundColor(.black)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width : geo.size.width * 0.11)
                                            .opacity(0.7)
                                        
                                        Text("Send")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                    }
                                    .padding(.horizontal, geo.size.width * 0.045)
                                    .padding(.vertical, geo.size.height * 0.02)
                                    .background(Color.black.opacity(0.075))
                                    .cornerRadius(geo.size.width * 0.015)
                                    
                                    })
                                    
                                    NavigationLink(
                                        destination: SendMoneyPage()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true),
                                        
                                        label: {
                                    VStack{
                                        Image("Sam Blue Background")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width : geo.size.width * 0.11, height: geo.size.width * 0.11)
                                            .shadow(radius: 1)
                                        
                                        Text("Sam")
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal, geo.size.width * 0.045)
                                    .padding(.vertical, geo.size.height * 0.02)
                                    .background(Color.black.opacity(0.075))
                                    .cornerRadius(geo.size.width * 0.015)
                                            
                                    })
                                    
                                    NavigationLink(
                                        destination: SendMoneyPage()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true),
                                        
                                        label: {
                                    VStack{
                                        Image("Sam Blue Background")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width : geo.size.width * 0.11, height: geo.size.width * 0.11)
                                            .shadow(radius: 1)
                                        
                                        Text("Sam")
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal, geo.size.width * 0.045)
                                    .padding(.vertical, geo.size.height * 0.02)
                                    .background(Color.black.opacity(0.075))
                                    .cornerRadius(geo.size.width * 0.015)
                                            
                                    })
                                    
                                    NavigationLink(
                                        destination: SendMoneyPage()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true),
                                        
                                        label: {
                                    VStack{
                                        Image("Sam Blue Background")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width : geo.size.width * 0.11, height: geo.size.width * 0.11)
                                            .shadow(radius: 1)
                                        
                                        Text("Sam")
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal, geo.size.width * 0.045)
                                    .padding(.vertical, geo.size.height * 0.02)
                                    .background(Color.black.opacity(0.075))
                                    .cornerRadius(geo.size.width * 0.015)
                                            
                                    })
                                    
                                    NavigationLink(
                                        destination: SendMoneyPage()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true),
                                        
                                        label: {
                                    VStack{
                                        Image("Sam Blue Background")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width : geo.size.width * 0.11, height: geo.size.width * 0.11)
                                            .shadow(radius: 1)
                                        
                                        Text("Sam")
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal, geo.size.width * 0.045)
                                    .padding(.vertical, geo.size.height * 0.02)
                                    .background(Color.black.opacity(0.075))
                                    .cornerRadius(geo.size.width * 0.015)
                                            
                                    })
                                }
                            }
                            .padding(.horizontal, geo.size.width * 0.065)
                        }
                        .padding(.top, geo.size.height * 0.03)
                        
                        LazyVStack{
                            
                            Text("Recent Transcations")
                                .fontWeight(.semibold)
                                .font(Font.system(size: geo.size.width * 0.052))
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading, geo.size.width * 0.065)
                                .padding(.bottom, geo.size.height * 0.015)
                            
                            ForEach(0..<5) { _ in
                                
                                Button(action: {
                                    
                                    showSheet.toggle()
                                    
                                }) {
                                    LazyHStack {
                                        
                                        Image("Sam Blue Background")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width : geo.size.width * 0.11, height: geo.size.width * 0.11)
                                            .padding(.leading, geo.size.width * 0.04)
                                            .shadow(radius: 1)
                                        
                                        VStack(spacing : geo.size.width * 0.01){
                                            Text("Sathriyan")
                                                .font(Font.system(size: geo.size.width * 0.037))
                                                .foregroundColor(.black)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.025)
                                            
                                            Text("30.06.2021")
                                                .font(Font.system(size: geo.size.width * 0.037))
                                                .foregroundColor(.black)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.025)
                                        }
                                        
                                        Text("$ \(balanceAmount)")
                                            .foregroundColor(.red)
                                            .font(Font.system(size: geo.size.width * 0.05))
                                            .fontWeight(.semibold)
                                            .padding(.leading, geo.size.width * 0.18)
                                        
                                    }
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                    
                                    .padding(.vertical, geo.size.height * 0.02)
                                    .background(Color.white.opacity(0.9))
                                    .cornerRadius(geo.size.width * 0.015)
                                    .shadow(radius: 1.5)
                                    .padding(.horizontal, geo.size.width * 0.065)
                                    .padding(.bottom, geo.size.height * 0.006)
                                }
                                .sheet(isPresented: $showSheet, content: {
                                    TransactionDetailPage()
                                })
                              
                            }
                            
                        }
                        .padding(.top, geo.size.height * 0.03)
                        .padding(.bottom, geo.size.height * 0.006)

                    }
                }
            }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
