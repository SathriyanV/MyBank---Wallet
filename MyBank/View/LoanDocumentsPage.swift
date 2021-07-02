//
//  LoanDocumentsPage.swift
//  MyBank
//
//  Created by Sathriyan on 02/07/21.
//

import SwiftUI

struct LoanDocumentsPage: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    HStack {
                        Text("Documents")
                            .foregroundColor(Color("CardBg"))
                            .font(Font.system(size: geo.size.width * 0.075))
                            .fontWeight(.semibold)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.top, geo.size.height * 0.12)
                            .padding(.leading, geo.size.width * 0.0556)
                        
                        Button(action: {}, label: {
                            Image(systemName: "plus.app")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color.black)
                                .frame(width : geo.size.width * 0.06)
                                .padding(.top, geo.size.height * 0.13)
                                .padding(.trailing, geo.size.width * 0.0556)
                        })
                        
                    }
                    VStack{
                        Text("No documents uploaded")
                    }
                    .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .center)
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

struct LoanDocumentsPage_Previews: PreviewProvider {
    static var previews: some View {
        LoanDocumentsPage()
    }
}
