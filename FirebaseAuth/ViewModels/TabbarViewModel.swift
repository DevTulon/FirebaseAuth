//
//  TabbarViewModel.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 6/7/21.
//

import Foundation
import SwiftUI

class TabbarViewModel: ObservableObject {
    @Published var tabSelection: Int = 0
    @Published var selectedItem: String? = nil
    
    func gotoRootView() {
        withAnimation {
            UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
            selectedItem = nil
        }
    }
}
