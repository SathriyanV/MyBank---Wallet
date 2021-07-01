//
//  ContentView.swift
//  MyBank
//
//  Created by Sathriyan on 30/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            TransactionsPage()
                .tabItem {
                    Image(systemName: "indianrupeesign.square")
                    Text("Transactions")
                }
            
            LoanPage()
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("Loan")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}