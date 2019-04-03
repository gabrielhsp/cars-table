//
//  ViewController.swift
//  CarsTable
//
//  Created by Gabriel Henrique Santos Pereira on 02/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewCarsList: UITableView!
    
    var arrayCarsList = [CarsAttribute]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCarsList.delegate = self
        tableViewCarsList.dataSource = self
        
        let cellNib = UINib(nibName: "CarsTableViewCell", bundle: nil)
        tableViewCarsList.register(cellNib, forCellReuseIdentifier: "carsCell")
        
        self.arrayCarsList = self.returnArrayOfCars()
    }
    
    func returnArrayOfCars() -> [CarsAttribute] {
        let jsonFile = Bundle.main.url(forResource: "Cars", withExtension: "json")!
        let jsonData: Data = try! Data(contentsOf: jsonFile)
        let allCarsList = CarsList.parse(jsonData)
        
        return allCarsList.carsList
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayCarsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carsCell") as! CarsTableViewCell
        
        cell.setupCarsCell(carsAttribute: arrayCarsList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
}
