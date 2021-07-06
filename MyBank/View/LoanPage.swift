//
//  LoanPage.swift
//  MyBank
//
//  Created by Sathriyan on 01/07/21.
//

import SwiftUI

struct LoanPage: View {
    
    @State var addMoney : String = ""
    
    @State var showAlert : Bool = false
    
    @State var educationLoanToggle : Bool = true
    @State var personalLoanToggle : Bool = true
    @State var homeLoanToggle : Bool = true
    @State var carLoanToggle : Bool = true
    
    @State var tOne : Bool = true
    @State var tTwo : Bool = true
    @State var tThree : Bool = true
    @State var tFour : Bool = true
    @State var tFive : Bool = true
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    VStack {
                        VStack {

                            Text("Loan Request")
                                .foregroundColor(Color("CardBg"))
                                .font(Font.system(size: geo.size.width * 0.075))
                                .fontWeight(.semibold)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.top, geo.size.height * 0.065)
                                .padding(.leading, geo.size.width * 0.065)
                                
                            
                            Text("Select type of loan")
                                .foregroundColor(Color.black)
                                .font(Font.system(size: geo.size.width * 0.057))
                                .fontWeight(.semibold)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.top, geo.size.height * 0.015)
                                .padding(.leading, geo.size.width * 0.065)
                    
                            VStack {
                                
                                HStack(spacing : geo.size.width * 0.065){
                                   
                                    Button(action: {
                                        
                                        educationLoanToggle.toggle()
                                        personalLoanToggle = true
                                        homeLoanToggle = true
                                        carLoanToggle = true
                                        
                                    }, label: {
                                    Text("Education")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.4, height: geo.size.height * 0.07)
                                        .background( educationLoanToggle ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                        
                                    Button(action: {
                                        
                                        personalLoanToggle.toggle()
                                        educationLoanToggle = true
                                        homeLoanToggle = true
                                        carLoanToggle = true
                                        
                                    }, label: {
                                    Text("Personal")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.4, height: geo.size.height * 0.07)
                                        .background( personalLoanToggle ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                }
                                .padding(.top , geo.size.height * 0.01)
                                
                                HStack(spacing : geo.size.width * 0.065){
                                    
                                    Button(action: {
                                        
                                        homeLoanToggle.toggle()
                                        educationLoanToggle = true
                                        personalLoanToggle = true
                                        carLoanToggle = true
                                        
                                    }, label: {
                                    Text("Home")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.4, height: geo.size.height * 0.07)
                                        .background( homeLoanToggle ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                        
                                    Button(action: {
                                        
                                        carLoanToggle.toggle()
                                        educationLoanToggle = true
                                        personalLoanToggle = true
                                        homeLoanToggle = true
                                        
                                    }, label: {
                                    Text("Car / Bike")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.4, height: geo.size.height * 0.07)
                                        .background( carLoanToggle ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                }
                                .padding(.top , geo.size.height * 0.01)
                            }
                            VStack{
                                
                                Text("Enter Loan Amount")
                                    .foregroundColor(Color.black)
                                    .font(Font.system(size: geo.size.width * 0.057))
                                    .fontWeight(.semibold)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                    .padding(.top, geo.size.height * 0.02)
                                    .padding(.leading, geo.size.width * 0.065)
                                
                                Text("Enter loan amount between 1000 to 50,000")
                                    .foregroundColor(Color.black)
                                    .font(Font.system(size: geo.size.width * 0.04))
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                    .padding(.top, geo.size.height * 0.001)
                                    .padding(.leading, geo.size.width * 0.065)
                                
                                TextField("Enter Amount", text: $addMoney)
                                    .padding(.leading, geo.size.width * 0.05)
                                    .disableAutocorrection(true)
                                    .font(Font.system(size: geo.size.width * 0.06))
                                    .frame(height : geo.size.width * 0.13)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                    .background(Color.black.opacity(0.1))
                                    .frame(width : geo.size.width * 0.85)
                                    .cornerRadius(geo.size.width * 0.015)
                                    .padding(.top, geo.size.height * 0.015)
                                
                            }
                            
                            VStack{
                                
                                Text("or")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .foregroundColor(.secondary)
                                
                                HStack(spacing : geo.size.width * 0.05){
                                    
                                    Button(action: {
                                        
                                        addMoney = "10000"
                                        
                                    }, label: {
                                    Text("10,000")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                        .background(Color.black.opacity(0.12))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                        
                                    Button(action: {
                                        
                                        addMoney = "250000"
                                        
                                    }, label: {
                                    Text("25,000")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                        .background(Color.black.opacity(0.12))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                    
                                    Button(action: {
                                        
                                        addMoney = "500000"
                                        
                                    }, label: {
                                    Text("50,000")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.25, height: geo.size.height * 0.07)
                                        .background(Color.black.opacity(0.12))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                       
                                }
                                .padding(.top , geo.size.height * 0.01)
                               
                            }
                            VStack{
                                
                                Text("Select Loan Tenure")
                                    .foregroundColor(Color.black)
                                    .font(Font.system(size: geo.size.width * 0.057))
                                    .fontWeight(.semibold)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                    .padding(.top, geo.size.height * 0.025)
                                    .padding(.leading, geo.size.width * 0.065)
                                
                                HStack(spacing : geo.size.width * 0.035){
                                    
                                    Button(action: {
                                            
                                        tOne.toggle()
                                        tTwo = true
                                        tThree = true
                                        tFour = true
                                        tFive = true
                                        
                                    }, label: {
                                    Text("6")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.14, height: geo.size.height * 0.07)
                                        .background( tOne ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                        
                                    Button(action: {
                                        
                                        tOne  = true
                                        tTwo.toggle()
                                        tThree = true
                                        tFour = true
                                        tFive = true
                                        
                                    }, label: {
                                    Text("12")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.14, height: geo.size.height * 0.07)
                                        .background( tTwo ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                    
                                    Button(action: {
                                        
                                        tOne  = true
                                        tTwo  = true
                                        tThree.toggle()
                                        tFour = true
                                        tFive = true
                                        
                                    }, label: {
                                    Text("18")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.14, height: geo.size.height * 0.07)
                                        .background( tThree ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                    
                                    Button(action: {
                                        
                                        tOne  = true
                                        tTwo  = true
                                        tThree = true
                                        tFour.toggle()
                                        tFive = true
                                        
                                    }, label: {
                                    Text("24")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.14, height: geo.size.height * 0.07)
                                        .background( tFour ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                    
                                    Button(action: {
                                        
                                        tOne  = true
                                        tTwo  = true
                                        tThree = true
                                        tFour = true
                                        tFive.toggle()
                                        
                                    }, label: {
                                    Text("30")
                                        .font(Font.system(size: geo.size.height * 0.025))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(width : geo.size.width * 0.14, height: geo.size.height * 0.07)
                                        .background( tFive ? Color.black.opacity(0.12) : Color.accentColor.opacity(0.7))
                                        .cornerRadius(geo.size.width * 0.015)
                                        .opacity(0.9)
                                })
                                }
                                .padding(.top , geo.size.height * 0.015)
                                
                            }
                            
                            Button(action: {
                                
                                showAlert.toggle()
                                
                            }, label: {
                                Text("Request Loan")
                                    .font(Font.system(size: geo.size.height * 0.027))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(width : geo.size.width * 0.7, height: geo.size.height * 0.065)
                                    .background(Color("CardBg"))
                                    .cornerRadius(geo.size.width * 0.03)
                                    .opacity(0.9)
                                    .padding(.top , geo.size.height * 0.04)
                            })
                            .alert(isPresented: $showAlert,
                                   content: {
                                    Alert(title: Text("Notice"), message: Text("Please Upload required loan documents in settings section"), dismissButton: .default(Text("Got it!")))
                                   })
                        }
                    }
                    .frame(maxWidth : .infinity, maxHeight: .infinity , alignment: .top)
                }
            }
            .background(Color("BgColor"))
            .edgesIgnoringSafeArea(.top)
            .ignoresSafeArea(.keyboard)
            .navigationBarHidden(true)
        }
    }
}

struct LoanPage_Previews: PreviewProvider {
    static var previews: some View {
        LoanPage()
    }
}
