//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

struct IconGrid: View {
    
    @Binding var selectedCurrency : Currency
    var body: some View {
        LazyVGrid(columns: [GridItem(),GridItem(), GridItem()]){
            ForEach(Currency.allCases) { currency in
                if(selectedCurrency == currency){
                    CurrencyIcon(Icon: currency.image , name: currency.name).shadow(color: .black, radius: 10).overlay{
                        RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 3).opacity(0.5)
                    }
                }else{
                    CurrencyIcon(Icon: currency.image , name: currency.name).onTapGesture {
                        selectedCurrency = currency
                    }
                }
                
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedCurrencyNow : Currency = .cooperPenny
    IconGrid(selectedCurrency: $selectedCurrencyNow)
}
