//
//  ProductGrids.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 15.04.2023.
//

import SwiftUI

struct ProductGrids: View {
    let products: [Product] = Product.getFakeData()
    let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 2)
    var body: some View {
        
       VStack(alignment:.leading){
            Text("Amazon Prime'ı Keşfet")
                .font(.system(size: 22, weight: .regular, design: .rounded))
                .padding()
            LazyVGrid(columns: columns) {
                ForEach(products[1...products.count-1], id:\.id) { product in
                    ProductItem(products: product)
                }//: ForEach
                .padding(.horizontal)
            }
           Text("Daha fazla öneri")
               .font(.system(size: 16, weight: .regular, design: .rounded))
               .foregroundColor(Color("NavBarSelectedColor"))
               .padding(.horizontal)
               .padding(.vertical,10)
          
        }//: VStack
    }
}
    
struct ProductGrids_Previews: PreviewProvider {
    static var previews: some View {
        ProductGrids()
    }
}


struct ProductItem: View {
    let products: Product
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Image(products.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 125, maxHeight: 125, alignment:.center)
                Spacer()
            }
            Text(products.name)
                .font(.system(size: 16, weight: .light, design: .rounded))
            Text(products.price)
                .font(.system(size: 16, weight: .light, design: .rounded))
        }//: VStack
        .padding()
        .frame(height: 180)
        .background(Color("BGColor").opacity(0.2))
        .padding(6)
       
    }
}
