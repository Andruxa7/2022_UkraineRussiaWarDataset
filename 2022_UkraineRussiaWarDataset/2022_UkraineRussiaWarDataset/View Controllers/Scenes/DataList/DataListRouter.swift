//
//  DataListRouter.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol DataListRoutingLogic {
    func routeToDetails(personnel: Personnel)
    func routeToDetails(equipment: Equipment)
}

protocol DataListDataPassing {
    var dataStore: DataListDataStore? { get }
}

class DataListRouter: DataListRoutingLogic, DataListDataPassing {
    
    weak var viewController: DatasetTableViewController?
    var dataStore: DataListDataStore?
    
    func routeToDetails(personnel: Personnel) {
        let nextVC = PersonelDetailsViewController()
        nextVC.title = "PersonelDetails"
        
        let destinationVC = nextVC
        var destinationDS = destinationVC.router!.dataStore!
        passDataToPersonnelDetailsList(source: dataStore!, destination: &destinationDS)
        
        viewController?.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func routeToDetails(equipment: Equipment) {
        let nextVC = EquipmentDetailsViewController()
        nextVC.title = "EquipementDetails"
        
        let destinationVC = nextVC
        var destinationDS = destinationVC.router!.dataStore!
        passDataToEquipmentDetailsList(source: dataStore!, destination: &destinationDS)
        
        viewController?.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    // MARK: Passing data
    
    func passDataToPersonnelDetailsList(source: DataListDataStore, destination: inout PersonnelDetailsListDataStore) {
        let selectedRow = viewController?.tableView.indexPathForSelectedRow?.row
        destination.currentPersonnel = source.currentPersonnel[selectedRow!]
    }
    
    func passDataToEquipmentDetailsList(source: DataListDataStore, destination: inout EquipmentDetailsListDataStore) {
        let selectedRow = viewController?.tableView.indexPathForSelectedRow?.row
        destination.currentEquipment = source.currentEquipment[selectedRow!]
    }
}
