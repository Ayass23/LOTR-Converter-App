//
//  ContentView.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 06/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeModal = false
    @State var leftValue = ""
    @State var rightValue = ""
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
                                    Image(.silverpenny).resizable().scaledToFit().frame(height: 33)
                                    Text("Silver Pieces").font(.headline).foregroundStyle(.white)
                                }.padding(.bottom, -5)
                                TextField("Amount", text: $leftValue).textFieldStyle(.roundedBorder)
                            }
                            Image(systemName: "equal").font(.largeTitle).foregroundStyle(.white).symbolEffect(.pulse)
                            
                            VStack{
                                HStack{
                                    Text("Gold Piece").font(.headline).foregroundStyle(.white)
                                    Image(.goldpiece).resizable().scaledToFit().frame(height: 33)
                                }.padding(.bottom, -5)
                                TextField("Amount", text: $rightValue).textFieldStyle(.roundedBorder)
                            }
                        }.padding().background(.black.opacity(0.5 )).clipShape(.capsule)
                        Spacer()
                        HStack{
                            Spacer()
                            Button{
                                showExchangeModal.toggle()
                            }label: {
                                Image(systemName: "info.circle.fill").font(.largeTitle).foregroundStyle(.white)
                            }.padding(.trailing).sheet(isPresented: $showExchangeModal){
                                ExchangeInfo()
                            }
                        }
                    }.foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
