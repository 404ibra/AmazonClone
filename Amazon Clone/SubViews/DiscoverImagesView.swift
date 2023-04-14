//
//  DiscoverView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI

struct DiscoverImagesView: View {
    private var fakeHeadlines: [(String)] = [
        "Günün fırsatları", "Çok Al Az Öde", "Bebek dünyası", "İnternet Favorileri","Gülümseten fiyatlar","Ofis İhtiyaçları", "Evim evim güzel evim", "Kupon"]
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Amazon Prime'ı Keşfet")
                .font(.system(size: 22, weight: .regular))
                .padding()
                
        ScrollView(.horizontal, showsIndicators: false) {
            
                HStack(alignment: .center, spacing: 30){
                    ForEach(0...7, id:\.self){i in
                        VStack{
                            Image("dis_img_\(i)")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Text(fakeHeadlines[i])
                                .font(.system(size:16, weight: .regular))
                                .frame(width: 80)
                        }//: VStack
                    }
                }
                .padding(.horizontal)//: HStack
            }//: ScrollView
            Spacer()
        }//: Big VSTack
    }
}
