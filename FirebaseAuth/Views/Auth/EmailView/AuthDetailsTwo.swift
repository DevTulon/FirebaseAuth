//
//  AuthDetailsTwo.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 8/7/21.
//

import SwiftUI

struct AuthDetailsTwo: View {
    @State private var isPresented = false
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }, label: {
            Text("GO!")
        })
        .fullScreenCover(isPresented: $isPresented) {
            TabbarView()
        }
        
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Details two")
            }
        }
    }
}

struct AuthDetailsTwo_Previews: PreviewProvider {
    static var previews: some View {
        AuthDetailsTwo()
    }
}
