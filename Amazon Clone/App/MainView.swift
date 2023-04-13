//
//  MainView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 13.04.2023.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var mainVM: MainVM
    //Props
    
    //Body
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                MainHeaderView()
                    .frame(height:125)
                    .ignoresSafeArea(edges: .top)
                Spacer()
                //: ZStack
                Text("Hello World")
                
            } //: VStack
            .navigationBarHidden(true)
        } //: Nav
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(MainVM())
    }
}

struct MainHeaderView: View {
    @EnvironmentObject var mainVM: MainVM
    var body: some View {
        ZStack {
                LinearGradient(colors: [Color("AccentBlue"), Color("AccentGreen")], startPoint: .leading, endPoint: .trailing)
            VStack{
                Spacer()
                //Search
                HStack(alignment: .center , spacing: 7) {
                    //Magnifiter Icon
                    Image(systemName: "magnifyingglass").imageScale(.large)
                    //Search Area
                    TextField.init("Amazon'da Ara",
                                   text: $mainVM.searchText) { _ in
                        
                    } onCommit: {
                        
                    }
                    
                    //Camera Icon
                    Image(systemName: "camera").imageScale(.large).foregroundColor(Color("CameraIcon"))
                }//: HStack
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                                .foregroundColor(.gray.opacity(0.4))
                            
                        )
                        .shadow(
                            color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                )
                .padding(.vertical)
                .padding(.horizontal, 12)
            }//: VStack
            
        }//: Ztack
    }
}
