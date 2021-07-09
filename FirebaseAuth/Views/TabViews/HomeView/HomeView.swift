//
//  HomeView.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 5/7/21.
//

import SwiftUI

struct HomeView: View {
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationLink(destination: HomeDetailsView()) {
            Text("Go")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
