//
//  SearchSuggestView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI

struct SearchSuggestView: View {
    let fakeSugData: [String] = ["akıllı kol saati", "tartı", "cüzdan", "airfry", "iphone 11", "lord of rings", "iphone 11 kılıf"]
    var body: some View {
        List{
            HStack(spacing: 8){
                Image(systemName: "camera")
                    .imageScale(.large)
                    .frame(width: 30)
                VStack(alignment: .leading){
                    Text("Tara")
                        .font(.system(size:18, weight: .regular, design: .rounded))
                    Text("Barkodları ve ürünleri tarayın").font(.system(size:15, weight: .light)).foregroundColor(Color("CameraIcon"))
                }
            }
            ForEach(self.fakeSugData, id: \.self) { i in
                HStack(spacing: 12){
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .padding(.leading, 2)
                        .frame(width: 30)
                        .foregroundColor(Color("CameraIcon"))
                    VStack(alignment: .leading){
                        Text(i)
                            .font(.system(size:15, weight: .semibold, design: .rounded))
                        Text("Tüm kategoriler alanında")
                            .font(.system(size:15, weight: .light)).foregroundColor(Color("CameraIcon"))
                    }//VStack
                    Spacer()
                    Image(systemName: "arrow.up.left")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color("CameraIcon").opacity(0.7))
                }//HStack
            }
        }//: List
        .listStyle(PlainListStyle())
    }//: BODY
}
