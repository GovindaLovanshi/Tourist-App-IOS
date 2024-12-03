//
//  ExploreService.swift
//  Journay
//
//  Created by Govinda lovanshi on 11/11/24.
//

import Foundation

class ExploreService{
    func fetchListings()async throws->[Listing]{
        return DeveloperPreview.shared.listings
    }
}
