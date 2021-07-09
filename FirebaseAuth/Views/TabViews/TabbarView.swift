//
//  TabbarView.swift
//  FirebaseAuth
//
//  Created by Reashed Tulon on 5/7/21.
//

import SwiftUI

struct TabbarView: View {
    @EnvironmentObject var tabbarViewModel: TabbarViewModel

    var body: some View {
        TabView(selection: $tabbarViewModel.tabSelection) {
            NavigationView {
                HomeView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Home")
                        }
                    }
            }.navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Image(systemName: "house")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Home")
                }
                .tag(0)

            NavigationView {
                CartView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Cart")
                        }
                    }
            }.navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Image(systemName: "cart")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Cart")
                }
                .tag(1)

            NavigationView {
                ProductView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Product")
                        }
                    }
            }.navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Image(systemName: "seal")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Product")
                }
                .tag(2)

            NavigationView {
                ProfileView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Profile")
                        }
                    }
            }.navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Image(systemName: "person")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Profile")
                }
                .tag(3)
        }
        .accentColor(Color("AppsDefaultColor"))
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
            .environmentObject(TabbarViewModel())
    }
}





//struct TabbarView: View {
//    @EnvironmentObject var tabbarViewModel: TabbarViewModel
//    @State private var title = ["Home", "Cart", "Product", "Profile"]
//
//    var body: some View {
//        TabView(selection: $tabbarViewModel.tabSelection) {
//            HomeView()
//                //.onAppear { self.title = "Home" }
//                .tabItem {
//                    Image(systemName: "house")
//                        .renderingMode(.template)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Text("Home")
//                }
//                .tag(0)
//
//            CartView()
//                //.onAppear { self.title = "Cart" }
//                .tabItem {
//                    Image(systemName: "cart")
//                        .renderingMode(.template)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Text("Cart")
//                }
//                .tag(1)
//
//            ProductView()
//                //.onAppear { self.title = "Product" }
//                .tabItem {
//                    Image(systemName: "seal")
//                        .renderingMode(.template)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Text("Product")
//                }
//                .tag(2)
//
//            ProfileView()
//                //.onAppear { self.title = "Profile" }
//                .tabItem {
//                    Image(systemName: "person")
//                        .renderingMode(.template)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                    Text("Profile")
//                }
//                .tag(3)
//        }
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                Text(title[tabbarViewModel.tabSelection])
//            }
//        }
//        .accentColor(Color("AppsDefaultColor"))
//        .navigationBarBackButtonHidden(true)
//    }
//}
