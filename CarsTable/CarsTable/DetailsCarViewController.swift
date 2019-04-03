//
//  DetailsCarViewController.swift
//  CarsTable
//
//  Created by Gabriel Henrique Santos Pereira on 03/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class DetailsCarViewController: UIViewController {
    @IBOutlet weak var imageViewCar: UIImageView!
    @IBOutlet weak var labelCarName: UILabel!
    @IBOutlet weak var labelCarManufacturer: UILabel!
    @IBOutlet weak var labelCarValue: UILabel!
    
    var detailsCarAtrributes: CarsAttribute?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setValuesForViewAtrributes()
        self.setBackgroundForView(carColor: Colors(rawValue: (detailsCarAtrributes?.carColor)!)!)
    }
    
    func setValuesForViewAtrributes() {
        self.imageViewCar.image = UIImage(named: detailsCarAtrributes?.carImage ?? "")!
        self.labelCarName.text = detailsCarAtrributes?.carName
        self.labelCarManufacturer.text = detailsCarAtrributes?.carManufacturer
        self.labelCarValue.text = detailsCarAtrributes?.carPrice
    }
    
    func setBackgroundForView(carColor: Colors) {
        switch carColor {
        case .vermelho:
            self.view.backgroundColor = UIColor.red
            
        case .azul:
            self.view.backgroundColor = UIColor.blue
            
        case .laranja:
            self.view.backgroundColor = UIColor.orange
            
        case .preto:
            self.view.backgroundColor = UIColor.black
            self.labelCarName.textColor = UIColor.white
            self.labelCarManufacturer.textColor = UIColor.white
            self.labelCarValue.textColor = UIColor.white
            
        default:
            self.view.backgroundColor = UIColor.white
        }
    }
}
