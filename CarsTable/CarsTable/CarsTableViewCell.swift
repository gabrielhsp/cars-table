//
//  CarsTableViewCell.swift
//  CarsTable
//
//  Created by Gabriel Henrique Santos Pereira on 02/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class CarsTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewCar: UIImageView!
    @IBOutlet weak var labelCarTitle: UILabel!
    @IBOutlet weak var labelCarManufacture: UILabel!
    
    var carColor: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setupCarsCell(carsAttribute: CarsAttribute) {
        imageViewCar.image = UIImage(named: carsAttribute.carImage!)
        labelCarTitle.text = carsAttribute.carName
        labelCarManufacture.text = carsAttribute.carManufacturer
        carColor = carsAttribute.carColor
        
        verifyCarColors(carColorName: carColor!)
    }
    
    private func verifyCarColors(carColorName: String) {
        switch carColorName {
            case "vermelho":
                labelCarTitle.textColor = UIColor.red
                break
            case "azul":
                labelCarTitle.textColor = UIColor.blue
                break
            
            case "branco":
                labelCarTitle.textColor = UIColor.white
                labelCarManufacture.textColor = UIColor.white
                self.backgroundColor = UIColor.darkGray
                break
            
            case "laranja":
                labelCarTitle.textColor = UIColor.orange
                break
            
            default:
                labelCarTitle.textColor = UIColor.black
        }
    }
}
