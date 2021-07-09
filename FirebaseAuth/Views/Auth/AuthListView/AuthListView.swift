//
//  AuthListView.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 2/7/21.
//

import SwiftUI

struct CellItem: Identifiable {
    var id = UUID()
    let title: String
    let image: String
    let destination: AnyView
}

struct AuthListView: View {
    var body: some View {
        ListView()
    }
}

struct AuthListView_Previews: PreviewProvider {
    static var previews: some View {
        AuthListView()
    }
}

struct IconImageView: View {
    var body: some View {
        VStack {
            Image("firebase")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120, alignment: .center)
        }
        .frame(maxWidth: .infinity, minHeight: 120, alignment: .center)
        .padding(.top, 50)
        .padding(.bottom, 50)
    }
}

struct ListView: View {
    @State private var cellList: [CellItem] = [
        CellItem(title: "Icon", image: "", destination: AnyView(EmptyView())),
        CellItem(title: "Phone", image: "Phone", destination: AnyView(EmailView())),
        CellItem(title: "Email", image: "Email", destination: AnyView(PhoneView())),
        CellItem(title: "Google", image: "Google", destination: AnyView(HomeView())),
        CellItem(title: "Facebook", image: "Facebook", destination: AnyView(CartView())),
        CellItem(title: "Twitter", image: "Twitter", destination: AnyView(ProductView()))]
    
    var body: some View {
        List(cellList, id: \.id) { item in
            if item.title == "Icon" {
                IconImageView()
            } else {
                AuthListCell(cellItem: item)
            }
        }
    }
}
