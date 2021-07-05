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
        CellItem(title: "", image: ""),
        CellItem(title: "Phone", image: "Phone"),
        CellItem(title: "Email", image: "Email"),
        CellItem(title: "Google", image: "Google"),
        CellItem(title: "Facebook", image: "Facebook"),
        CellItem(title: "Twitter", image: "Twitter")]
    
    var body: some View {
        List {
            ForEach(0 ..< cellList.count) { index in
                if index == 0 {
                    IconImageView()
                } else {
                    AuthListCell(cellItem: cellList[index], index: index)
                }
            }
        }
    }
}
