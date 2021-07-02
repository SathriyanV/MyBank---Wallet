//
//  MyBankApp.swift
//  MyBank
//
//  Created by Sathriyan on 30/06/21.
//

import SwiftUI

@main
struct MyBankApp: App {
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                SignIn()
            }else{
                ContentView()
            }
            
            
        }
    }
}
