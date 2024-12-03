//
//  ProfileView.swift
//  Journay
//
//  Created by Govinda lovanshi on 10/11/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            
            // profile log
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8){
                    Text("profile")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start plnning to next journy")
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
                
                HStack{
                    Text("Don,t have a account")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            // profile option
            VStack(spacing: 24){
                ProfileOptionView(imageName: "Gaju", title: "Setting")
                ProfileOptionView(imageName: "Gaju", title: "Accessbillity")
                ProfileOptionView(imageName: "Gaju", title: "Visit the help center")
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ProfileView()
}
