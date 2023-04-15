//
//  FeaturedBanner.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI


struct FeaturedBanner: View {
    var body: some View {
        ZStack{
            HStack(alignment:.center, spacing: -5){
                Text("Deprem bölgesi için \nürün bağış kampanyası")
                    .font(.system(size:18, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                Image("FeaturedBannerImage")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)

            }
        }//: ZStack
        
        .frame(width: UIScreen.main.bounds.width)
        
        .background(Color("FeaturedBannerColor"))
        
        .padding(.vertical, 10)
        
    }
}
