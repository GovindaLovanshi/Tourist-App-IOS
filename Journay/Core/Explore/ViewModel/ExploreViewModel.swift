//
//  ExploreViewModel.swift
//  Journay
//
//  Created by Govinda lovanshi on 11/11/24.
//

import Foundation

class ExploreViewModel:ObservableObject{
    @Published var listings :   [Listing]()
    private let service:ExploreService
    
    init(service:ExploreService) {
        self.service = service
        
        Task {await fetchListing()}
    }
    
    func fetchListing() async{
        do{
            self.listings = try await service.fetchListings()
        }catch{
            print("DEBUG: Failed \(error.localizedDescription)")
        }
    }
}
