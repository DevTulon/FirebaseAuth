//
//  ProfileView.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 6/7/21.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var tabbarViewModel: TabbarViewModel
    
    var body: some View {
        Button(action: {
            tabbarViewModel.gotoRootView()
        }, label: {
            Text("Dismiss")
        })
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
