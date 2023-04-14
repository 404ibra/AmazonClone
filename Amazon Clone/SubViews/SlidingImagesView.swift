//
//  SlidingImagesView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI


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
