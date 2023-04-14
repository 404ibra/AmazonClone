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
    @Published var selectedTab: Tabs = .search
    @Published var edges = UIApplication.shared.windows.first?.safeAreaInsets
}
    
enum Tabs: String, CaseIterable {
    case search = "house";
    case profile =  "person";
    case shopCart = "cart";
    case burgerMenu = "line.horizontal.3";
}
//CaseIterable kullanmam ile enum içinde oluşturduğum tüm case'leri bir dizide tutmak için kullanırım bu şekilde daha
//temiz kod kullanılabilir
//let tab = Tabs.allCases
 
