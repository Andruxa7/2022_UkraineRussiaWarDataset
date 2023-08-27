//
//  EquipmentListInteractor.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol EquipmentDetailsListBusinessLogic {
    func fetchEquipment()
}

protocol EquipmentDetailsListDataStore {
    var currentEquipment: Equipment! { get set }
}

class EquipmentListInteractor: EquipmentDetailsListBusinessLogic, EquipmentDetailsListDataStore {
    // MARK: - Properties
    
    var presenter: EquipmentDetailsListPresentationLogic?
    var currentEquipment: Equipment!
    
    
    // MARK: - Get Equipment

    func fetchEquipment() {
        presenter?.presentEquipment(equipement: currentEquipment)
    }
}
