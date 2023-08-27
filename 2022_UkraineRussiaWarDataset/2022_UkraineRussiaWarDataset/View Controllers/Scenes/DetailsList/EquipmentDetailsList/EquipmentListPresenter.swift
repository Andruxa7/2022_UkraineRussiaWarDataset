//
//  EquipmentListPresenter.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol EquipmentDetailsListPresentationLogic {
    func presentEquipment(equipement: Equipment)
}

class EquipmentListPresenter: EquipmentDetailsListPresentationLogic {
    
    weak var viewController: DetailsEquipmentListDisplayLogic?
    
    
    // MARK: Get data
    
    func presentEquipment(equipement: Equipment) {
        viewController?.displayEquipment(equipement: equipement)
    }
}
