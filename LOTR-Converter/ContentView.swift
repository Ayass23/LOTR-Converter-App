//
//  ContentView.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 06/03/25.
//

import SwiftUI


struct ContentView: View {
    @State var showExchangeModal = false
    @State var showSelectCurrencyModal = false
    @State var leftValue = ""
    @State var rightValue = ""
    
    @State var leftCurrencySelected = Currency.silverPiece
    @State var rightCurrencySelected = Currency.goldPiece
    
    
    var body: some View {
        ZStack{
            //Background Image
            Image(.background).resizable().ignoresSafeArea()
            VStack{
                HStack{
                    VStack{
                        Image(.prancingpony).resizable().scaledToFit().frame(height: 200)
                        Text("Currency Exchange").font(.largeTitle).foregroundStyle(.white)
                        HStack{
                            VStack{
                                HStack{
                                    Image(leftCurrencySelected.image).resizable().scaledToFit().frame(height: 33)
                                    Text(leftCurrencySelected.name).font(.headline).foregroundStyle(.white)
                                }.padding(.bottom, -5)
                                TextField("Amount", text: $leftValue)
                                    .textFieldStyle(.roundedBorder)
                                    .onChange(of: leftValue) { rightValue = leftCurrencySelected.convert(leftValue, to: rightCurrencySelected)
                                }
                            }.onTapGesture {
                                showSelectCurrencyModal.toggle()
                            }
                            Image(systemName: "equal").font(.largeTitle).foregroundStyle(.white).symbolEffect(.pulse)
                            
                            VStack{
                                HStack{
                                    Text(rightCurrencySelected.name).font(.headline).foregroundStyle(.white)
                                    Image(rightCurrencySelected.image).resizable().scaledToFit().frame(height: 33)
                                }.padding(.bottom, -5)
                                TextField("Amount", text: $rightValue).textFieldStyle(.roundedBorder).disabled(true)
                            }.onTapGesture {
                                showSelectCurrencyModal.toggle()
                            }
                        }.padding().background(.black.opacity(0.5 )).clipShape(.capsule)
                        Spacer()
                        HStack{
                            Spacer()
                            Button{
                                showExchangeModal.toggle()
                            }label: {
                                Image(systemName: "info.circle.fill").font(.largeTitle).foregroundStyle(.white)
                            }.padding(.trailing)
                        }
                    }.sheet(isPresented: $showExchangeModal){
                        ExchangeInfo()
                    }.sheet(isPresented: $showSelectCurrencyModal){
                        SelectCurrency(leftCurrency: $leftCurrencySelected, rightCurrency: $rightCurrencySelected)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
