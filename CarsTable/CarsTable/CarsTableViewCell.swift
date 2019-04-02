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
    
    // This attribute will receive a data that will be used to iterate over array data
    var carsListData: String = "" {
        didSet {
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
