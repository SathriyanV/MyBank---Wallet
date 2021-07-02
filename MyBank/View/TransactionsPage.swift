//
//  TransactionsPage.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct TransactionsPage: View {
        
    @State var balanceAmount : Int = 20000
    
    @State var showSheet : Bool = false
    
    @State var receiverName : String = "Sathriyan"
    
    var body: some View {
        
            NavigationView {
                GeometryReader { geo in
                VStack {
                    VStack {
                        Text("All Transactions")
                            .foregroundColor(Color("CardBg"))
                            .font(Font.system(size: geo.size.width * 0.07))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.08)
                            .padding(.leading, geo.size.width * 0.065)
                        
                        ScrollView {
                        
                            ForEach(0..<10) { _ in
                                Button(action: {
                                    
                                    showSheet.toggle()
                                    
                                }) {
                                    LazyHStack(spacing : geo.size.width * 0.015) {
                                        
                                        Image("meditate-5353620_1280")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .mask(Circle())
                                            .frame(width : geo.size.width * 0.11, height: geo.size.width * 0.11)
                                            .padding(.leading, geo.size.width * 0.05)
                                            .shadow(radius: 1)
                                        
                                        VStack(spacing : geo.size.width * 0.01){
                                            Text(receiverName)
                                                .font(Font.system(size: geo.size.width * 0.045))
                                                .foregroundColor(.black)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.025)
                                            
                                            Text("30.06.2021")
                                                .font(Font.system(size: geo.size.width * 0.037))
                                                .foregroundColor(.black)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                .padding(.leading, geo.size.width * 0.025)
                                        }
                                        
                                        HStack (spacing : geo.size.width * 0.01){
                                            
                                            Text(" - \(balanceAmount)")
                                                .foregroundColor(.red)
                                                .font(Font.system(size: geo.size.width * 0.05))
                                                .fontWeight(.semibold)
                                            
                                            Text("$")
                                                .font(Font.system(size: geo.size.width * 0.05))
                                                .foregroundColor(.black)
                                                
                                        }
                                        .padding(.leading, geo.size.width * 0.14)
                                        
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
                            .padding(.top, geo.size.height * 0.01)
                        }
                        .padding(.top, geo.size.height * 0.005)
                        
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

struct TransactionsPage_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsPage()
    }
}
