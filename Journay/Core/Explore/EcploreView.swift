//
//  EcploreView.swift
//  Journay
//
//  Created by Govinda lovanshi on 28/10/24.
//

import SwiftUI

struct EcploreView: View {
    @State private var showDestinationSearch = false
    @StateObject var viewmodel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack{
            
            if showDestinationSearch{
                DestinationSearchView(show: $showDestinationSearch)
            }else{
                SearchBar()
                    .onTapGesture {
                        withAnimation(.snappy){
                            showDestinationSearch.toggle()
                        }
                    }
                
                ScrollView{
                    LazyVStack(spacing: 32){
                        ForEach(viewmodel.listings){listing in
                            NavigationLink(value:listing){
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self){listing in
                    ListingDeatails(listing: listing    )
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    EcploreView()
}
