//
//  ContentView.swift
//  MyBank
//
//  Created by Sathriyan on 30/06/21.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            TabView{
                HomePage()
                    .navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                TransactionsPage()
                    .navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "indianrupeesign.square")
                        Text("Transactions")
                    }
                
                LoanPage()
                    .navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "plus.app")
                        Text("Loan")
                    }
                
                SettingsPage()
                    .navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
