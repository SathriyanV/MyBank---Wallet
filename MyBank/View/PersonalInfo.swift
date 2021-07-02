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
                    
                    VStack{
                        Text("Name")
                            .font(Font.system(size: geo.size.width * 0.045))
                            .foregroundColor(.secondary)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.06)
                            .padding(.top, geo.size.height * 0.01)
                        
                        HStack {
                            
                            Text("Sathriyan V")
                                .font(Font.system(size: geo.size.width * 0.048))
                                .foregroundColor(.black)
                                .padding(.leading, geo.size.width * 0.03)
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.025)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.top, geo.size.height * 0.001)
                        
                    }
                    
                    VStack{
                        Text("Phone")
                            .font(Font.system(size: geo.size.width * 0.045))
                            .foregroundColor(.secondary)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.06)
                            .padding(.top, geo.size.height * 0.01)
                        
                        HStack {
                            
                            Text("+91 8508402025")
                                .font(Font.system(size: geo.size.width * 0.048))
                                .foregroundColor(.black)
                                .padding(.leading, geo.size.width * 0.03)
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.025)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.top, geo.size.height * 0.001)
                        
                    }
                    
                    VStack{
                        Text("Email")
                            .font(Font.system(size: geo.size.width * 0.045))
                            .foregroundColor(.secondary)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.06)
                            .padding(.top, geo.size.height * 0.01)
                        
                        HStack {
                            
                            Text("sathriyansam@yahoo.com")
                                .font(Font.system(size: geo.size.width * 0.048))
                                .foregroundColor(.black)
                                .padding(.leading, geo.size.width * 0.03)
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.025)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.top, geo.size.height * 0.001)
                        
                    }
                    
                    VStack{
                        Text("Account number")
                            .font(Font.system(size: geo.size.width * 0.045))
                            .foregroundColor(.secondary)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.06)
                            .padding(.top, geo.size.height * 0.01)
                        
                        HStack {
                            
                            Text("09876543XY")
                                .font(Font.system(size: geo.size.width * 0.048))
                                .foregroundColor(.black)
                                .padding(.leading, geo.size.width * 0.03)
                        }
                        .padding(.vertical, geo.size.height * 0.02)
                        .padding(.leading, geo.size.width * 0.025)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .frame(width : geo.size.width * 0.88)
                        .background(Color.white)
                        .cornerRadius(geo.size.width * 0.02)
                        .padding(.top, geo.size.height * 0.001)
                        
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
