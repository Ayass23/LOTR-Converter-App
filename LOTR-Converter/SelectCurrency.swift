//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var closeModal
    @Binding var leftCurrency : Currency
    @Binding var rightCurrency : Currency
    var body: some View {
        ZStack{
            Image(.parchment).resizable().ignoresSafeArea().background(.brown)
            VStack{
                Text("Select The Currency You are starting with : ").font(.headline).multilineTextAlignment(.center).padding(.bottom)
                IconGrid(selectedCurrency: $leftCurrency).padding(.bottom)
             
                Text("Select The Currency You would like to convert to :").font(.headline).bold().multilineTextAlignment(.center).padding(.bottom)
                
                IconGrid(selectedCurrency: $rightCurrency).padding(.bottom)
                
                Button("Done"){
                    closeModal()
                }.buttonStyle(.borderedProminent).font(.title3).tint(.brown.mix(with: .black, by: 0.2)).foregroundStyle(.white)
            }.padding().multilineTextAlignment(.center).foregroundStyle(.black)
        }.onTapGesture {
            print("Select Currency Top Currency: \(leftCurrency) Right Currency: \(rightCurrency)")
        }
    }
}

#Preview {
    @Previewable @State var topCurrency : Currency = .cooperPenny
    @Previewable @State var bottomCurrency : Currency = .cooperPenny
    
    SelectCurrency(leftCurrency: $topCurrency, rightCurrency: $bottomCurrency)
}
