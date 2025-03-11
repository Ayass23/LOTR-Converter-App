//
//  ExchangeInfo.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 10/03/25.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var closeModal
    var body: some View {
        ZStack{
            Image(.parchment).resizable().ignoresSafeArea().background(Color.brown)
            VStack{
                Text("Exchange Rates").font(.largeTitle).tracking(3)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates :").font(.title3).padding()
                ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                
                ExchangeRate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Piecies", rightImage: .silverpiece)
                
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver Penny = 100 Cooper Pennies", rightImage: .copperpenny)
                
                Button("Done"){
                    closeModal()
                }.buttonStyle(.borderedProminent).tint(.brown.mix(with: .black, by: 0.2)).font(.title2).padding().foregroundStyle(.white)
            }.foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
//
//struct ExchangeRate: View {
//    var body: some View {
//        HStack{
//            Image(.goldpiece).resizable().scaledToFit().frame(height: 30)
//            Text("1 Gold Piece = 4 Gold Pennies")
//            Image(.goldpenny).resizable().scaledToFit().frame(height: 30)
//        }
//    }
//}
