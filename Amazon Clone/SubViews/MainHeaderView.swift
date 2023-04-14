//
//  MainHeaderView.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI

struct MainHeaderView: View {
    @EnvironmentObject var mainVM: MainVM
    @State private var isAnimated: Bool = false
    var body: some View {
        
    
        HStack(spacing: 0){   
            if mainVM.isSearchEditing{
                Image(systemName:"arrow.backward")
                    .font(.system(size: 22, weight: .medium))
                    .padding(.leading)
                    .offset(x: isAnimated ? 0 : -8 )
                    .opacity(isAnimated ? 1 : 0)
                    .animation(.easeIn)
                    .onAppear{
                        withAnimation{
                            self.isAnimated = true
                        }
                    }
            }
                //Search
                HStack(alignment: .center , spacing: 7) {
                    //Magnifiter Icon
                    Image(systemName: "magnifyingglass").imageScale(.large)
                    //Search Area
                    TextField.init("Amazon'da Ara",
                            text: $mainVM.searchText) {
                      
                            mainVM.isSearchEditing = $0
                    } onCommit: {
                        
                    }
                    
                    //Camera Icon
                    if !mainVM.isSearchEditing {
                        Image(systemName: "camera").imageScale(.large).foregroundColor(Color("CameraIcon"))
                    }
                }//: HStack
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                                .foregroundColor(.gray.opacity(0.4))
                            
                        )
                        .shadow(
                            color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                )
                .padding(.vertical)
                .padding(.horizontal, 12)
            }//: VStack
            .padding(.top, mainVM.edges?.top )
            .padding(.top, (mainVM.edges?.top ?? CGFloat(0) > 0) ? 0: 12  )

            .background( LinearGradient(colors: [Color("AccentBlue"), Color("AccentGreen")], startPoint: .leading, endPoint: .trailing)
            )

    }//: BODY
}
