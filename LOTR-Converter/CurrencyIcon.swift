//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

struct CurrencyIcon: View {
    let Icon : ImageResource
    let name : String
    var body: some View {
        ZStack(alignment: .bottom){
            Image(Icon).resizable().scaledToFit()
            Text(name).padding(3).background(.brown.opacity(0.7)).font(.caption).frame(maxWidth: .infinity)
        }.background(.brown.mix(with: .black, by: 0.2).opacity(0.7)).frame(width: 100, height: 100).clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(Icon: .copperpenny, name: "Copper Penny")
}
