//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable{
    case cooperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id : Currency{
        self
    }
    
    var image : ImageResource{
        switch self {
        case .cooperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
            
        }
    }
    
    var name : String{
        switch self {
        case .cooperPenny:
            "Cooper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
    
    func convert(_ amountString : String, to currency : Currency) -> String {
            guard let doubleAmount = Double(amountString) else {
                return ""
            }
            let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
            
            return String(format:  "%.2f", convertedAmount)
        
    }
}
