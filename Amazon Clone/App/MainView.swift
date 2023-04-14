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
                  //  .frame(height:125)
                   
                if mainVM.isSearchEditing {
                    SearchSuggestView().opacity(mainVM.isSearchEditing ? 1 : 0)
                }
                Spacer()
                //: ZStack
            }//: VStack
            .ignoresSafeArea(edges: .top)
            .onTapGesture {
                UIApplication.shared.endEditing()
            }
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



