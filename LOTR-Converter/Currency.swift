//
//  ExchangeRate.swift
//  LOTR-Converter
//
//  Created by Andreas Margono on 11/03/25.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable{
    case cooperPenny
    case silverPenny
    case silverPiece
    case goldPenny
    case goldPiece
    
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
}
