//
//  DataListInteractor.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol DataListBusinessLogic {
    func fetchData(by requestType: RequestType)
}

protocol DataListDataStore {
    var currentPersonnel: [Personnel] { get set }
    var currentEquipment: [Equipment] { get set }
}

class DataListInteractor: DataListBusinessLogic, DataListDataStore {
    // MARK: - Properties
    
    var presenter: DataListPresentationLogic?
    var currentPersonnel: [Personnel] = []
    var currentEquipment: [Equipment] = []
    
    var networkApiManager = NetworkApiManager()
    var personel: [Personnel] = []
    var equipement: [Equipment] = []
    
    
    // MARK: Get Data
    
    func fetchData(by requestType: RequestType) {
        switch requestType {
        case .personnel:
            networkApiManager.onCompletionPersonnel = { [weak self] personel in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    self.personel.append(contentsOf: personel)
                    self.presenter?.presentPersonnel(personels: self.personel)
                    self.currentPersonnel = self.personel
                }
            }
            networkApiManager.fetchCurrentData(forRequestType: .personnel)
        case .equipment:
            networkApiManager.onCompletionEquipment = { [weak self] equipment in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    self.equipement.append(contentsOf: equipment)
                    self.presenter?.presentEquipment(equipements: self.equipement)
                    self.currentEquipment = self.equipement
                }
            }
            networkApiManager.fetchCurrentData(forRequestType: .equipment)
        }
    }
}
