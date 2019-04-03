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
        
        self.arrayCarsList = self.returnArrayOfCars()
    }
    
    func returnArrayOfCars() -> [CarsAttribute] {
        let jsonFile = Bundle.main.url(forResource: "Cars", withExtension: "json")!
        let jsonData: Data = try! Data(contentsOf: jsonFile)
        let allCarsList = CarsList.parse(jsonData)
        
        return allCarsList.carsList
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinySegue = segue.destination as? DetailsCarViewController
        let dataCars = sender as? CarsAttribute
        
        destinySegue?.detailsCarAtrributes = (dataCars)!
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaNova")
        
        cell?.textLabel?.text = arrayCarsList[indexPath.row].carName
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dataCars = arrayCarsList[indexPath.row]
        
       self.performSegue(withIdentifier: "segueCarsInformation", sender: dataCars)
    }
}
