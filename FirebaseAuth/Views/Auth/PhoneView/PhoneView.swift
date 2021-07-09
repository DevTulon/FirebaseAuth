//
//  PhoneView.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 9/7/21.
//

import SwiftUI

struct PhoneView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: AuthDetailsTwo()) {
                Text("Go")
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Phone")
                }
            }
        }
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}
