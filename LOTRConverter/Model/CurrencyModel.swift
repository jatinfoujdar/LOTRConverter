import Foundation



struct CurrencyModel{
    let currency : Currency
}


enum Currency: Double{
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
}
