//
//  EquipmentListRouter.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol EquipmentDetailsListRoutingLogic {
    //
}

protocol EquipmentDetailsListDataPassing {
    var dataStore: EquipmentDetailsListDataStore? { get }
}

class EquipmentListRouter: EquipmentDetailsListRoutingLogic, EquipmentDetailsListDataPassing {
    weak var viewController: EquipmentDetailsViewController?
    var dataStore: EquipmentDetailsListDataStore?
}
