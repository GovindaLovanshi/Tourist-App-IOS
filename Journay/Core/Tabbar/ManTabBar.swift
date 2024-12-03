//
//  ManTabBar.swift
//  Journay
//
//  Created by Govinda lovanshi on 10/11/24.
//

import SwiftUI

struct ManTabBar: View {
    var body: some View {
        TabView{
            EcploreView()
                .tabItem{
                    Label("Explore",systemImage: "magnifyglass")
                }
            
            WishlistView()
                .tabItem{
                    Label("Wishlists",systemImage: "heart")
                }
            
            
            ProfileView()
                .tabItem{
                    Label("Profile",systemImage: "person")
                }
        }
    }
}

#Preview {
    ManTabBar()
}
