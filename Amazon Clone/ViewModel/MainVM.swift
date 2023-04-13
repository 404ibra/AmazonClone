//
//  MainVM.swift
//  Amazon Clone
//
//  Created by İbrahim Aktaş on 13.04.2023.
//

import Foundation
import UIKit

class MainVM: ObservableObject {
    @Published var searchText: String = ""
    @Published var isSearchEditing: Bool = false
    @Published var edges = UIApplication.shared.windows.first?.safeAreaInsets
}
    
