//
//  NotificationPage.swift
//  MyBank
//
//  Created by Sathriyan on 02/07/21.
//

import SwiftUI

struct NotificationPage: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    Text("Notifications")
                        .foregroundColor(Color("CardBg"))
                        .font(Font.system(size: geo.size.width * 0.075))
                        .fontWeight(.semibold)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.top, geo.size.height * 0.12)
                        .padding(.leading, geo.size.width * 0.0556)
                    VStack{
                        Text("No notifications")
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

struct NotificationPage_Previews: PreviewProvider {
    static var previews: some View {
        NotificationPage()
    }
}
