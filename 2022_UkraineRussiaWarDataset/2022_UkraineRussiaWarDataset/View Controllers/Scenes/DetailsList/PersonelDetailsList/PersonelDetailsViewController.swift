//
//  PersonelDetailsViewController.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 22.08.2023.
//

import UIKit

protocol DetailsPersonnelListDisplayLogic: AnyObject {
    func displayPersonnel(personel: Personnel)
}

class PersonelDetailsViewController: UIViewController, DetailsPersonnelListDisplayLogic {
    // MARK: - Properties
    
    var interactor: PersonnelDetailsListBusinessLogic?
    var router: (PersonnelDetailsListRoutingLogic & PersonnelDetailsListDataPassing)?
    
    var dateLable = UILabel()
    var dayLable = UILabel()
    var personnelLabel = UILabel()
    var personnel_Lable = UILabel()
    var powLable = UILabel()
    
    
    // MARK: - initializers
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    
    // MARK: Setup
    private func setup() {
        let viewController = self
        let interactor = PersonnelListInteractor()
        let presenter = PersonnelListPresenter()
        let router = PersonnelListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addViews()
        setupConstraints()
        interactor?.fetchPersonnel()
    }
    
    
    // MARK: - DetailsPersonnelListDisplayLogic
    
    func displayPersonnel(personel: Personnel) {
        let personel = personel
        dateLable.text = "date: \(personel.date)"
        dayLable.text = "day: \(personel.day)"
        personnelLabel.text = "personnel: \(personel.personnel)"
        personnel_Lable.text = "personnel*: \(personel.personnelPersonnel)"
        powLable.text = "POW: \(personel.pow ?? 0)"
    }
}
