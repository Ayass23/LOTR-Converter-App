//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage : ImageResource
    let text : String
    let rightImage : ImageResource
    var body: some View {
        HStack{
            Image(leftImage).resizable().scaledToFit().frame(height: 30)
            Text(text)
            Image(rightImage).resizable().scaledToFit().frame(height: 30)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}
