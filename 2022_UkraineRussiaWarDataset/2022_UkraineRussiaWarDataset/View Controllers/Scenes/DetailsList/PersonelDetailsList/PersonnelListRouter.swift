//
//  PersonnelListRouter.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 27.08.2023.
//

import UIKit

protocol PersonnelDetailsListRoutingLogic {
    //
}

protocol PersonnelDetailsListDataPassing {
    var dataStore: PersonnelDetailsListDataStore? { get }
}

class PersonnelListRouter: PersonnelDetailsListRoutingLogic, PersonnelDetailsListDataPassing {
    weak var viewController: PersonelDetailsViewController?
    var dataStore: PersonnelDetailsListDataStore?
}
