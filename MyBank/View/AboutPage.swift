//
//  AboutPage.swift
//  MyBank
//
//  Created by Sathriyan on 02/07/21.
//

import SwiftUI

struct AboutPage: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    Text("About")
                        .foregroundColor(Color("CardBg"))
                        .font(Font.system(size: geo.size.width * 0.075))
                        .fontWeight(.semibold)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.top, geo.size.height * 0.12)
                        .padding(.leading, geo.size.width * 0.0556)
                   
                    VStack{
                        
                        Text("General")
                            .font(Font.system(size: geo.size.width * 0.045))
                            .foregroundColor(.secondary)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .padding(.leading, geo.size.width * 0.06)
                            .padding(.top, geo.size.height * 0.02)
                        
                        VStack{
                            VStack(spacing : geo.size.height * 0.02){
                                
                                
                                    HStack {
                                        Image(systemName: "gear")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.black)
                                            .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                            .padding(.leading, geo.size.width * 0.015)
                                        
                                        Text("Application")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .foregroundColor(Color.secondary)
                                            .padding(.leading, geo.size.width * 0.03)
                                        
                                        Spacer()
                                        
                                        Text("MyBANK")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.trailing, geo.size.width * 0.05)
                                    }
                                
                               
                                Divider()
                                
                                    HStack {
                                        Image(systemName: "checkmark.seal")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.black)
                                            .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                            .padding(.leading, geo.size.width * 0.015)
                                        
                                        Text("Compatability")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .foregroundColor(Color.secondary)
                                            .padding(.leading, geo.size.width * 0.03)
                                        
                                        Spacer()
                                        
                                        Text("iOS 14.1 +")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.trailing, geo.size.width * 0.05)
                                    }
                                
                                Divider()
                                
                                    HStack {
                                        Image(systemName: "keyboard")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.black)
                                            .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                            .padding(.leading, geo.size.width * 0.015)
                                        
                                        Text("Developer")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .foregroundColor(Color.secondary)
                                            .padding(.leading, geo.size.width * 0.03)
                                        
                                        Spacer()
                                        
                                        Text("Sathriyan")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.trailing, geo.size.width * 0.05)
                                    }
                                
                                Divider()
                                
                                    HStack {
                                        Image(systemName: "paintbrush")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.black)
                                            .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                            .padding(.leading, geo.size.width * 0.015)
                                        
                                        Text("Designer")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .foregroundColor(Color.secondary)
                                            .padding(.leading, geo.size.width * 0.03)
                                        
                                        Spacer()
                                        
                                        Text("Sathriyan")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.trailing, geo.size.width * 0.05)
                                    }
                                
                                Divider()
                                
                                    HStack {
                                        Image(systemName: "flag")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.black)
                                            .frame(width : geo.size.width * 0.05, height : geo.size.width * 0.05)
                                            .padding(.leading, geo.size.width * 0.015)
                                        
                                        Text("Version")
                                            .font(Font.system(size: geo.size.width * 0.048))
                                            .foregroundColor(Color.secondary)
                                            .padding(.leading, geo.size.width * 0.03)
                                        
                                        Spacer()
                                        
                                        Text("1.0")
                                            .font(Font.system(size: geo.size.width * 0.045))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .padding(.trailing, geo.size.width * 0.05)
                                    }
                                
                            }
                            .padding(.vertical, geo.size.height * 0.02)
                            .padding(.leading, geo.size.width * 0.04)
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .frame(width : geo.size.width * 0.88)
                            .background(Color.white)
                            .cornerRadius(geo.size.width * 0.02)
                            .padding(.vertical, geo.size.height * 0.009)
                            .padding(.horizontal, geo.size.width * 0.05)
                            
                        }
                        .frame(maxWidth : .infinity, alignment: .center)
                        
                    }
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

struct AboutPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutPage()
    }
}
