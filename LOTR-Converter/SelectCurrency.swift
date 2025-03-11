//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

struct SelectCurrency: View {
    var body: some View {
        ZStack{
            Image(.parchment).resizable().ignoresSafeArea().background(.brown)
            VStack{
                Text("Select The Currency You are starting with :").font(.title3).multilineTextAlignment(.center)
                
                ZStack{
                    Image(.copperpenny).resizable().scaledToFit().frame(height: 100)
                    VStack{
                        
                        Text("Cooper Penny")
                    }
                    
                    
                    
                }.background(.brown.mix(with: .black, by: 0.2).opacity(0.7))
                
                Text("Select The Currency You would like to convert to :").font(.headline).bold().multilineTextAlignment(.center)
                
                Button("Done"){
                    
                }.font(.headline).padding().background(.brown.mix(with: .black, by: 0.2)).foregroundColor(.white)
            }
        }
    }
}

#Preview {
    SelectCurrency()
}
