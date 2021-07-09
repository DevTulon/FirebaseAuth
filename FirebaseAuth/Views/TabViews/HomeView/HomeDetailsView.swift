//
//  HomeDetailsView.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 5/7/21.
//

import SwiftUI

struct HomeDetailsView: View {
    @EnvironmentObject var tabbarViewModel: TabbarViewModel
    
    var body: some View {
        Button(action: {
            tabbarViewModel.gotoRootView()
        }, label: {
            Text("Dismiss")
        })
        
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Home Details")
            }
        }
    }
}

struct HomeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailsView()
    }
}
