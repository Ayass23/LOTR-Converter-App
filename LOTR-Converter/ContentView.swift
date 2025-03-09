//
//  ContentView.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 06/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //Background Image
            Image(.background).resizable().ignoresSafeArea()
            VStack{
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)
                Text("Currency Exchange").font(.largeTitle).foregroundStyle(.white)
                HStack{
                    Image(.silverpenny).resizable().scaledToFit().frame(width: 50, height: 30)
                    Text("Silver Pieces").font(.headline).foregroundStyle(.white)
                }
                
            }
            Image(systemName: "equal").font(.headline).foregroundStyle(.white)
            
        }
    }
}

#Preview {
    ContentView()
}
