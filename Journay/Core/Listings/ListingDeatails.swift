//
//  ListingDeatails.swift
//  Journay
//
//  Created by Govinda lovanshi on 02/11/24.
//

import SwiftUI
import MapKit

struct ListingDeatails: View {
    let listing:Listing
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingCareousView(listing:listing )
                    .frame(height: 320)
                
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "Home")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill()
                                .frame(width: 32,height: 32)
                        }
                        .padding(32)
                }
            }
                
            VStack(alignment: .leading, spacing: 8){
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "Home")
                        
                        Text("\(listing.title)")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .foregroundStyle(.black)
                    
                    Text("\(listing.City) \(listing.state)")
                    
                }
                .font(.caption)
            }
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            // host info view
            
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire \(listing.typr.description) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    
                    HStack{
                        Text("4 Guest")
                        Text("4 Badrooms")
                        Text("4 beds")
                        Text("4 baths")
                    }.font(.caption)
                }
                
                .frame(width: 300,alignment: .leading)
                
                Spacer()
                
                Image("Home")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64,height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            // listing feature
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0..<2){feture in
                    HStack(spacing: 12){
                        Image(systemName: "Home")
                        
                        VStack(alignment: .leading){
                            Text("SuperHost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experince, highly rated host")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            Divider()
            
            VStack(alignment: .leading,spacing: 16){
                Text("where you ,ll  sleep")
                    .font(.headline)
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:16){
                        ForEach(0, ..<5) { bedroom in
                            VStack{
                                Image(systemName: "bed")
                                
                                Text("Bedroom\(bedroom)")
                            }
                            .frame(width:132,height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //listing amanitis
            VStack(spacing:16){
                Text("what this place offer")
                    .font(.headline)
                
                ForEach(0, ..<5){feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
                .padding()
                
                Divider()
                VStack(alignment: .leading, spacing: 16){
                    Text("Where you,ll be")
                        .font(.headline)
                    
                    Map()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                }.padding()
                
            }
            .toolbar(.hidden, for: .tabBar)
            .ignoresSafeArea()
            .padding(.bottom,64)
            .overlay(alignment: .bottom){
                VStack{
                    Divider()
                        .padding(.bottom)
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("$500")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Total before taxes")
                                .font(.footnote)
                            
                                
                            Text("nov 1 - 10")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .underline()
                        }
                        Spacer()
                        
                        Button{
                            
                        }label: {
                            Text("Reserve")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 148,height: 40)
                                .background(.black)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    .padding(.horizontal,32)
                }
                .background(.white)
            }
        }
    }
}

#Preview {
    ListingDeatails(listing: DeveloperPreview.shared.listing[0])
}

