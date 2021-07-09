//
//  AuthListCell.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 2/7/21.
//

import SwiftUI

struct AuthListCell: View {
    var cellItem: CellItem
    @EnvironmentObject var tabbarViewModel: TabbarViewModel
    
    var body: some View {
        NavigationLink(
            destination: cellItem.destination,
            tag: cellItem.title,
            selection: $tabbarViewModel.selectedItem) {
            cell(cellItem: cellItem)
        }
    }
}

struct cell: View {
    var cellItem: CellItem
    var body: some View {
        HStack(spacing: 15) {
            Image(cellItem.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 28, maxHeight: .infinity, alignment: .center)

            Text(cellItem.title)
                .foregroundColor(Color("DefaultText"))
                .font(.system(size: 17))
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

struct AuthListCell_Previews: PreviewProvider {
    static var previews: some View {
        AuthListCell(cellItem: CellItem(title: "Facebook", image: "Facebook", destination: AnyView(EmptyView())))
    }
}
