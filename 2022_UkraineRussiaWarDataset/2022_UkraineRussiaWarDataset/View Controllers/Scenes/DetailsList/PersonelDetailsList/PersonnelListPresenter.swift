//
//  PersonnelListPresenter.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol PersonelDetailsListPresentationLogic {
    func presentPersonnel(personel: Personnel)
}

class PersonnelListPresenter: PersonelDetailsListPresentationLogic {
    
    weak var viewController: DetailsPersonnelListDisplayLogic?
    
    
    // MARK: Get data
    
    func presentPersonnel(personel: Personnel) {
        viewController?.displayPersonnel(personel: personel)
    }
}
