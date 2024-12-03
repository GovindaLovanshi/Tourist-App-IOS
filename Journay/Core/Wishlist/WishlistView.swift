//
//  WishlistView.swift
//  Journay
//
//  Created by Govinda lovanshi on 10/11/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in to view your wishlist")
                        .font(.headline)
                    
                    Text("You can create view edit  wishlist once")
                        .font(.footnote)
                }
                
                Button{
                    
                }label: {
                    Text("Log in")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
