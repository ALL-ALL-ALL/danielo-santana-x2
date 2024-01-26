//
//  ContentView.swift
//  danielo santana x2
//
//  Created by  Ixart on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: "person.crop.circle")
                    .foregroundColor(Color.red)
                    .frame(width: 5, height: 60)

                    
                    .font(.system(size: 70))
                    .padding(.trailing,36.0)
                VStack(alignment: .leading){
                    Text("Danilo Santana")

                        .fontWeight(.bold)
            
                        
                        
                    Text("brazil")
                        .fontWeight(.thin)
                        .padding(.bottom, 40)
                    Text("Racing Driver")
                        .fontWeight(.bold)
                }
            }
            RoundedRectangle(cornerRadius: 25)
                           .fill(.gray)
                           .frame(width: 350, height: 600)
            
        }
       }
}

#Preview {
    ContentView()
}
