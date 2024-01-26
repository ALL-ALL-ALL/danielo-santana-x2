//
//  ContentView.swift
//  ForEach
//
//  Created by  Ixart on 20/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    struct Prevision : Identifiable  {
        
        let id = UUID()
        
        var date   : String
        var symbol : String
        var temp   : Int
  
    }
    
    
        
                    
    let PrevisionSur10 = [
        
        Prevision(date : "lundi", symbol : "sun.min", temp : 23),
        Prevision(date : "mardi", symbol : "cloud.rain", temp : 32),
        Prevision(date : "mercredi", symbol : "cloud.sun.rain", temp : 11),
        Prevision(date : "jeudi", symbol : "rays", temp : 2),
        Prevision(date : "vendredi", symbol : "sun.haze.fill", temp : 15),
        Prevision(date : "samedi", symbol : "sun.and.horizon.fill", temp : 12),
        Prevision(date : "dimanche", symbol : "cloud.drizzle.fill", temp : 21),
        Prevision(date : "lundi", symbol : "sun.min", temp : 25),
        Prevision(date : "mardi", symbol : "cloud.rain.fill", temp : 22),
        Prevision(date : "mercredi", symbol : "sun.min", temp : 10),
           
        ]
 
    var body: some View {
        
        VStack(alignment: .center, spacing: 2) {

            ForEach (PrevisionSur10) {prevision in
                VStack{
                    Divider()
                    HStack{
                        
                                            
                                            
                                            Text(prevision.date)
                                                    .font(.headline)
                                                    .foregroundStyle(Color.white)
                                                
                                                    Image(systemName    : prevision.symbol)
                                                        .frame(width    : 30, height    : 30)
                                                        .symbolVariant(.fill)
                                                        .symbolRenderingMode(.multicolor)
                                                        .frame(maxWidth : .infinity)
                        
                
                                            
                                            Text(prevision.temp.description + " °C")
                            .foregroundStyle(Color.white)
                            .font(.title2)

                        
                    }// HSSTACK
                    
                
                    
                    
                    
                } // HSTACK
                .padding()
                .background(Color(.blue))
                .cornerRadius(12)
                

                
   
            } // FOR EACH
           
                        
          
            
            
            
            
            
            
            
            
            
            
            
            
            
        } // Fin Vstack

    } // fin du body
    
    
} // fin Struct
#Preview {
    ContentView()
}
