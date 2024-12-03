//
//  ProfileOptionView.swift
//  Journay
//
//  Created by Govinda lovanshi on 10/11/24.
//

import SwiftUI

struct ProfileOptionView: View {
    let imageName:String
    let title:String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName:imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionView(imageName: "", title: "Setting")
}
