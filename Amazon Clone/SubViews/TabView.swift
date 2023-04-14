//
//  TabView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI

struct TabItem: View {
    @EnvironmentObject var mainVM: MainVM
    let tab: Tabs
    var body: some View {
        VStack {
            ZStack{
                RoundedRectTabView()
                    .frame(width: 45,height: 8)
                    .foregroundColor(Color.clear)
                
                if mainVM.selectedTab == tab {
                    RoundedRectTabView()
                        .frame(width: 45,height: 8)
                    .foregroundColor((mainVM.selectedTab == tab) ? Color("NavBarSelectedColor") : Color("NavBarUnselectedColor"))
                }// IF Block
            }
            Spacer()
            Button {
                mainVM.selectedTab = tab
            } label: {
                Image(systemName: tab.rawValue)
                    .imageScale(.large )
                    .foregroundColor((mainVM.selectedTab == tab) ? Color("NavBarSelectedColor") : Color("NavBarUnselectedColor") )
                    .frame(height: 50)
                  
            }

        }
    }//: Body
}

struct TabBarView: View {
    @EnvironmentObject var mainVM: MainVM
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Divider()
                .frame(height: 1.5)
            //Navigation
            HStack{
                ForEach(Tabs.allCases,id:\.self){tab in
                    Spacer()
                    TabItem(tab: tab)
                    Spacer()
                }
            }//HStack
            .padding(.horizontal)
            .frame(height: 70)
            .ignoresSafeArea(edges: .bottom)
            .background(
                Rectangle().fill(.white))
            //: ZStack
            //.frame(height: 70)
        }
    }
}
