//
//  Amazon_CloneApp.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 13.04.2023.
//

import SwiftUI

@main
struct Amazon_CloneApp: App {
   

    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(MainVM())
                
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
