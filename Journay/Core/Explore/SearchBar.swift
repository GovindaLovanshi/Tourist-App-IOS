//
//  SearchBar.swift
//  Journay
//
//  Created by Govinda lovanshi on 01/11/24.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack{
            Image(systemName: "Home")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where to go")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                
                Text("Anywhere - Any Week  - Add Gusete")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "Home")
                    .foregroundStyle(.black)
                
            })
            
        }.padding(.horizontal)
            .padding(.vertical,10)
            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color:.black.opacity(0.4),radius: 2)
            }
            .padding()
    }
}

#Preview {
    SearchBar()
}
