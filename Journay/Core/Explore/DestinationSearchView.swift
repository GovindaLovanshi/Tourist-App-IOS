//
//  DestinationSearchView.swift
//  Journay
//
//  Created by Govinda lovanshi on 09/11/24.
//

import SwiftUI

enum DestinationSearchOption{
    case location
    case dates
    case guests
}
struct DestinationSearchView: View {
    @Binding var show : Bool
    @State private var destination = ""
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuest  = 0
    
    @State private var  selectedOption:DestinationSearchOption = .location
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Button{
                    show.toggle()
                }label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
               
                if !destination.isEmpty{
                    Button("Clear"){
                        
                    }
                    .foregroundStyle(.black)
                    .font(.headline)
                    .fontWeight(.semibold)
                }
                }
            .padding()
            
            VStack(alignment: .leading){
                    if selectedOption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnify")
                            .imageScale(.small)
                        
                        TextField("Search Destination",text: $destination)
                            .font(.subheadline)
                        
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }else{
                    CollapseView(title: "Where", description: "destination")
                }
            }
            .modifier(CollapseDestinationViewModifier())
            .frame(height: selectedOption == .location ?120 : 64)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location
                }
            }
            
            //date selection
            
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("when s your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }else{
                    CollapseView(title: "when", description: "Add Dates")
                }
            }
            .modifier(CollapseDestinationViewModifier())
            .frame(height: selectedOption == .dates ?180 : 64)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates
                }
            }
            
            //num guest
            VStack{
                if selectedOption == .guests{
                    Text("Who is Coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper{
                        Text("\(numGuest)0 Adults")
                    }onIncrement: {
                        numGuest += 1
                    }onDecrement: {
                        guard numGuest > 0 else {return}
                        numGuest -= 1
                    }
                }else{
                    CollapseView(title: "who", description: "Add Guset")
                }
            }
            .modifier(CollapseDestinationViewModifier())
            .frame(height: selectedOption == .guests ?120 : 64)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates
                }
            }
            
            Spacer()
                
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapseDestinationViewModifier:ViewModifier{
    func body(content:Content) -> some View{
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
        
    }
}

struct CollapseView:View {
    let title :String
    let description:String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray  )
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: 10)
    }
}
