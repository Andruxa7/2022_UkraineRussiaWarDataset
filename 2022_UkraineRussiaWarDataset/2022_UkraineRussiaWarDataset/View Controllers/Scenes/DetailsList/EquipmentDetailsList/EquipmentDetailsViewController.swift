//
//  EquipmentDetailsViewController.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 22.08.2023.
//

import UIKit

protocol DetailsEquipmentListDisplayLogic: AnyObject {
    func displayEquipment(equipement: Equipment)
}

class EquipmentDetailsViewController: UIViewController, DetailsEquipmentListDisplayLogic {
    // MARK: - Properties
    
    var interactor: EquipmentDetailsListBusinessLogic?
    var router: (EquipmentDetailsListRoutingLogic & EquipmentDetailsListDataPassing)?
    
    var dateLable = UILabel()
    var dayLable = UILabel()
    var aircraftLable = UILabel()
    var helicopterLable = UILabel()
    var tankLable = UILabel()
    var apcLable = UILabel()
    var fieldArtilleryLable = UILabel()
    var mrlLable = UILabel()
    var militaryAutoLable = UILabel()
    var fuelTankLable = UILabel()
    var droneLable = UILabel()
    var navalShipLable = UILabel()
    var antiAircraftWarfareLable = UILabel()
    var specialEquipmentLable = UILabel()
    var mobileSRBMSystemLable = UILabel()
    var greatestLossesDirectionLable = UILabel()
    var vehiclesAndFuelTanksLable = UILabel()
    var cruiseMissilesLable = UILabel()
    
    
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
        let interactor = EquipmentListInteractor()
        let presenter = EquipmentListPresenter()
        let router = EquipmentListRouter()
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
        interactor?.fetchEquipment()
    }
    
    
    // MARK: - DetailsEquipmentListDisplayLogic
    
    func displayEquipment(equipement: Equipment) {
        let equipment = equipement
        dateLable.text = "date: \(equipment.date)"
        dayLable.text = "day: \(equipment.day.description)"
        aircraftLable.text = "aircraft: \(equipment.aircraft)"
        helicopterLable.text = "helicopter: \(equipment.helicopter)"
        tankLable.text = "tank: \(equipment.tank)"
        apcLable.text = "apc: \(equipment.apc)"
        fieldArtilleryLable.text = "fieldArtillery: \(equipment.fieldArtillery)"
        mrlLable.text = "mrl: \(equipment.mrl)"
        militaryAutoLable.text = "militaryAuto: \(equipment.militaryAuto ?? 0)"
        fuelTankLable.text = "fuelTank: \(equipment.fuelTank ?? 0)"
        droneLable.text = "drone: \(equipment.drone)"
        navalShipLable.text = "navalShip: \(equipment.navalShip)"
        antiAircraftWarfareLable.text = "antiAircraftWarfare: \(equipment.antiAircraftWarfare)"
        specialEquipmentLable.text = "specialEquipment: \(equipment.specialEquipment ?? 0)"
        mobileSRBMSystemLable.text = "mobileSRBMSystem: \(equipment.mobileSRBMSystem ?? 0)"
        greatestLossesDirectionLable.text = "greatestLossesDirection: \(equipment.greatestLossesDirection ?? "No Location")"
        vehiclesAndFuelTanksLable.text = "vehiclesAndFuelTanks: \(equipment.vehiclesAndFuelTanks ?? 0)"
        cruiseMissilesLable.text = "cruiseMissiles: \(equipment.cruiseMissiles ?? 0)"
    }
}
