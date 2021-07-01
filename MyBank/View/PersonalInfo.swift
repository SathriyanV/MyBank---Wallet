//
//  PersonalInfo.swift
//  MyBank
//
//  Created by Sathriyan on 02/07/21.
//

import SwiftUI

struct PersonalInfo: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    VStack {
                        Image("Sathriyan Image 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width :geo.size.width * 0.35)
                            .shadow(radius: 1)
                            .padding(.top, geo.size.height * 0.09)
                        
                        Text("Sathriyan Sam")
                            .foregroundColor(Color.black)
                            .font(Font.system(size: geo.size.width * 0.06))
                            .fontWeight(.semibold)
                            .padding(.top, geo.size.height * 0.015)
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

struct PersonalInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfo()
    }
}
