//
//  ListingCareousView.swift
//  Journay
//
//  Created by Govinda lovanshi on 02/11/24.
//

import SwiftUI

struct ListingCareousView: View {
    let listing :Listing
    var body: some View {
        TabView{
            ForEach(listing.imageUrls,id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFit()
            }
        }
           
        
    }
}

#Preview {
    ListingCareousView(listing: DeveloperPreview.shared.listing[0])
}
