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
        
        VStack{
            ZStack{
                HomeView()
            }
            
            
            TabBarView()//: VStack
        

        }
    }//: VStack
}
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
                    .frame(height: 30)
                    .padding(.bottom, 10)
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


struct HomeView: View {
    @EnvironmentObject var mainVM: MainVM
    //Props
    
    //Body
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                MainHeaderView()
                  //  .frame(height:125)
                LocationArea()
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






