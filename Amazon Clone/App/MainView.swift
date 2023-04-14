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
                    SlidingImagesView()
                    
                }// : Big Else
                
                
                
                
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







struct SlidingImagesView: View {
    @State var slidingImages: Int = 0
    let sliderTimer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()

    var body: some View {
        TabView(selection: $slidingImages) {
            ForEach(0...4, id: \.self){i in
                Image("sliding_img_\(i)")
                    .resizable()
                    .tag(i)
            }//: ForEach
        }//TabView
        .tabViewStyle(PageTabViewStyle())
        .frame(height: UIScreen.main.bounds.height/3)
        .onReceive(sliderTimer){input in
            if slidingImages < 4{
                slidingImages += 1
            }else{
                slidingImages = 0
            }
            
        }.onTapGesture(count: 1, perform: {
            sliderTimer.upstream.connect().cancel()
        })
    }
}
