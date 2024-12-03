//
//  Listing.swift
//  Journay
//
//  Created by Govinda lovanshi on 10/11/24.
//

import Foundation

struct Listing:Identifiable,Codable,Hashable    {
    let id:String
    let ownerId:String
    let ownerName:String
    let ownerImageUrl:String
    let numberBadroom:Int
    let numberOfBathroom:Int
    let numberOfGuest:Int
    let numberOfBed:Int
    var  pricePerNight:Int
    let latitude:Double
    let longitude:Double
    var imageUrls:[String]
    let Address:String
    let City:String
    let state:String
    let title:String
    var rating:Double
    var features:[ListingFeature]
    var amanaties:[ListingAntties]
    let typr:[ListingType]
}

enum ListingFeature:Int,Codable,Identifiable,Hashable{
    case selfCheck
    case superHost
    
    var imageName:String{
        switch self{
        case .selfCheck:return "image"
        case .superHost:return "medal"
        }
    }
    
    var title:String{
        switch self{
        case .selfCheck:return "image"
        case .superHost:return "medal"
        }
    }
    
    var subTitle:String{
        switch self{
        case .selfCheck:return "image"
        case .superHost:return "medal"
        }
    }
    
    var id: Int{return   self.rawValue}
}

enum ListingAntties : Int,Codable,Identifiable,Hashable{
    case pool
    case kitchen
    case wifi
    case loundary
    case tv
    case alaramSystem
    case office
    case balcony
    
    var title:String{
        switch self{
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .loundary: return "Loundary"
        case .tv :return "Tv"
        case .alaramSystem: return "AlaramSystem"
        case .office: return "Office"
        case .balcony: return "Balcony  "
        }
    }
        var imageName:String{
            switch self{
            case .pool: return "Pool"
            case .kitchen: return "Kitchen"
            case .wifi: return "Wifi"
            case .loundary: return "Loundary"
            case .tv :return "Tv"
            case .alaramSystem: return "AlaramSystem"
            case .office: return "Office"
            case .balcony: return "Balcony  "
            }
    }
    
    var id: Int{return self.rawValue}
}

enum ListingType:Int,Codable,Identifiable,Hashable{
    case apartment
    case house
    case townhouse
    case villa
    
    var description:String{
        switch self{
        case .apartment:return "Apartment"
        case .house :return "House"
        case .townhouse:return "Townhouse"
        case .villa:return "villa"
        }
    }
    var id: Int{return self.rawValue}
}
