//
//  BigCategories.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 15.04.2023.
//

import SwiftUI

struct BigCategories: View {
    @EnvironmentObject var mainVM: MainVM
    @State var imagename: String
    @State var headlineText: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(headlineText)
                .font(.system(size: 20, weight: .semibold, design: .rounded)).padding(.leading,10).padding(.top,10)
            Image(imagename)
                .resizable()
                .scaledToFit()
                .padding(10)
                .frame(width: UIScreen.main.bounds.width)
            Text("Tüm fırsatları gör")
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(Color("NavBarSelectedColor"))
                .padding(.horizontal)
                .padding(.vertical,8)
            Divider().background(.gray)
          
        }//: VStack
        .background(.white)
        
     
        
    }
}
