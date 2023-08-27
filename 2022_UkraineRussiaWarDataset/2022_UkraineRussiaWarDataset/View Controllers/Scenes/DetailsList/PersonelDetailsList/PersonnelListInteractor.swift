//
//  PersonnelListInteractor.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol PersonnelDetailsListBusinessLogic {
    func fetchPersonnel()
}

protocol PersonnelDetailsListDataStore {
    var currentPersonnel: Personnel! { get set }
}

class PersonnelListInteractor: PersonnelDetailsListBusinessLogic, PersonnelDetailsListDataStore {
    // MARK: - Properties
    
    var presenter: PersonelDetailsListPresentationLogic?
    var currentPersonnel: Personnel!
    
    
    // MARK: - Get Personnel

    func fetchPersonnel() {
        presenter?.presentPersonnel(personel: currentPersonnel)
    }
}
