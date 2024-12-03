//
//  ListingView.swift
//  Journay
//
//  Created by Govinda lovanshi on 01/11/24.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing:Listing
    var body: some View {
        VStack(spacing: 8){
            // images
           
            ListingCareousView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            
            // details
            HStack{
                
                VStack(alignment: .leading){
                    Text("\(listing.City), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Gaju singh")
                        .foregroundStyle(.gray)

                    Text("Gaju singh")
                        .foregroundStyle(.gray  )

                    HStack(spacing: 4){
                        Text("\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")


                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                
                // rating
                
                HStack(spacing: 2){
                    Image(systemName: "Home")
                    
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
                
            }.font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
