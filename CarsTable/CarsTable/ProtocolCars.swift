//
//  ProtocolCars.swift
//  CarsTable
//
//  Created by Gabriel Henrique Santos Pereira on 02/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import Foundation

struct CarsList: Decodable {
    var carsList: [CarsAttribute]
    
    enum CodingKeys: String, CodingKey {
        case carsList = "carros"
    }
}

extension CarsList {
    static func parse(_ data: Data) -> CarsList {
        var carsList = CarsList(carsList: [CarsAttribute]())
        
        do {
            carsList = try JSONDecoder().decode(CarsList.self, from: data)
        } catch let error {
            print("Sorry 🦴, but I can't parse this JSON file \(error)")
        }
        
        return carsList
    }
}

struct CarsAttribute: Decodable {
    var carName: String?
    var carManufacturer: String?
    var carColor: String?
    var carImage: String?
    var carPrice: String?
    
    enum CodingKeys: String, CodingKey {
        case carName = "nome"
        case carManufacturer = "fabrica"
        case carColor = "cor"
        case carImage = "imagem"
        case carPrice = "valor"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        carName = try values.decodeIfPresent(String.self, forKey: .carName)
        carManufacturer = try values.decodeIfPresent(String.self, forKey: .carManufacturer)
        carColor = try values.decodeIfPresent(String.self, forKey: .carColor)
        carImage = try values.decodeIfPresent(String.self, forKey: .carImage)
        carPrice = try values.decodeIfPresent(String.self, forKey: .carPrice)
    }
}
