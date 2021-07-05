//
//  AuthListCell.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 2/7/21.
//

import SwiftUI

struct AuthListCell: View {
    var cellItem: CellItem
    var index: Int
    
    var body: some View {
        Button(action: {
            cellAction(index: index)
        }, label: {
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
                
                Image(systemName: "chevron.forward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("DefaultText"))
                    .frame(width: 15, height: 15, alignment: .center)
            }
            .padding(.top, 5)
            .padding(.bottom, 5)
        })
    }
    
    func cellAction(index: Int) {
        print("index: \(index)")
    }
}

struct AuthListCell_Previews: PreviewProvider {
    static var previews: some View {
        AuthListCell(cellItem: CellItem(title: "Facebook", image: "Facebook"), index: 0)
    }
}
