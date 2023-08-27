//
//  DataListPresenter.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol DataListPresentationLogic {
    func presentPersonnel(personels: [Personnel])
    func presentEquipment(equipements: [Equipment])
}

class DataListPresenter: DataListPresentationLogic {
    
    weak var viewController: DataListDisplayLogic?
    
    
    // MARK: Get data
    
    func presentPersonnel(personels: [Personnel]) {
        viewController?.displayPersonnel(personels: personels)
    }
    
    func presentEquipment(equipements: [Equipment]) {
        viewController?.displayEquipment(equipements: equipements)
    }
}
