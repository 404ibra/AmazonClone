//
//  LocationArea.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 14.04.2023.
//

import SwiftUI

struct LocationArea: View {
    var body: some View {
        HStack(alignment: .center){
            Image("Location")
                .resizable()
                .scaledToFit()
                .frame(height: 25)
            Text("Alıcı: İbrahim - İstanbul 34800")
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(Color("LocationBGColor"))
    }
}
