//
//  MainView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 13.04.2023.
//

import SwiftUI




struct HomeView: View {
    @EnvironmentObject var mainVM: MainVM
    @State var slidingImages: Int = 0
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
                }else{
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(alignment: .center, spacing:0){
                            SlidingImagesView()
                            DiscoverImagesView()
                            FeaturedBanner()
                            BigCategories(imagename: "prod_img_1", headlineText: "Amazon Prime ayda sadece 7,90 TL")
                            BigCategories(imagename: "prod_img_0", headlineText: "Erkek modasını keşfedin")
                            VStack {
                                ProductGrids()
                            }.background(.white)
                            
                        }
                    }

                }// : Big Else
                
                
                
                
                Spacer()
                //: ZStack
            }//: VStack
            .ignoresSafeArea(edges: .top)
            .onTapGesture {
                UIApplication.shared.endEditing()
            }
            .background(Color("BGColor"))
            .navigationBarHidden(true)
        } //: Nav
    }
}

    

    
    
    
    struct MainView: View {
        @EnvironmentObject var mainVM: MainVM
        //Props
        //Body
        var body: some View {
            
            VStack{
                ZStack{
                    HomeView()
                }
                
                TabBarView()
                    .padding(.bottom, (mainVM.edges?.bottom == 0) ? 15 : 0)//: VStack
                
                
            }
        }//: VStack
    }
    
    
    
    
    
    
    
    
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
                .environmentObject(MainVM())
        }
    }


