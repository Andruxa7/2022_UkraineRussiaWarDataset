//
//  EquipmentDetailsViewController+Extension.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 26.08.2023.
//

import Foundation
import UIKit

extension EquipmentDetailsViewController {
    //I understand that the view controller file is not very large and it was possible not to make this extension and leave these methods in the view controller. But I decided to do this in order to demonstrate what I understand how to make extensions for controllers in the case when they are very large for readability of the code.
    
    
    // MARK:- Add the subviews
    
    func addViews() {
        dateLable.textAlignment = .left
        dateLable.font = UIFont.systemFont(ofSize: 17)
        dateLable.textColor = UIColor.systemRed
        
        dayLable.textAlignment = .left
        dayLable.font = UIFont.systemFont(ofSize: 17)
        dayLable.textColor = UIColor.systemRed
        
        aircraftLable.textAlignment = .left
        aircraftLable.font = UIFont.systemFont(ofSize: 17)
        aircraftLable.textColor = UIColor.systemRed
        
        helicopterLable.textAlignment = .left
        helicopterLable.font = UIFont.systemFont(ofSize: 17)
        helicopterLable.textColor = UIColor.systemRed
        
        tankLable.textAlignment = .left
        tankLable.font = UIFont.systemFont(ofSize: 17)
        tankLable.textColor = UIColor.systemRed
        
        apcLable.textAlignment = .left
        apcLable.font = UIFont.systemFont(ofSize: 17)
        apcLable.textColor = UIColor.systemRed
        
        fieldArtilleryLable.textAlignment = .left
        fieldArtilleryLable.font = UIFont.systemFont(ofSize: 17)
        fieldArtilleryLable.textColor = UIColor.systemRed
        
        mrlLable.textAlignment = .left
        mrlLable.font = UIFont.systemFont(ofSize: 17)
        mrlLable.textColor = UIColor.systemRed
        
        militaryAutoLable.textAlignment = .left
        militaryAutoLable.font = UIFont.systemFont(ofSize: 17)
        militaryAutoLable.textColor = UIColor.systemRed
        
        fuelTankLable.textAlignment = .left
        fuelTankLable.font = UIFont.systemFont(ofSize: 17)
        fuelTankLable.textColor = UIColor.systemRed
        
        droneLable.textAlignment = .left
        droneLable.font = UIFont.systemFont(ofSize: 17)
        droneLable.textColor = UIColor.systemRed
        
        navalShipLable.textAlignment = .left
        navalShipLable.font = UIFont.systemFont(ofSize: 17)
        navalShipLable.textColor = UIColor.systemRed
        
        antiAircraftWarfareLable.textAlignment = .left
        antiAircraftWarfareLable.font = UIFont.systemFont(ofSize: 17)
        antiAircraftWarfareLable.textColor = UIColor.systemRed
        
        specialEquipmentLable.textAlignment = .left
        specialEquipmentLable.font = UIFont.systemFont(ofSize: 17)
        specialEquipmentLable.textColor = UIColor.systemRed
        
        mobileSRBMSystemLable.textAlignment = .left
        mobileSRBMSystemLable.font = UIFont.systemFont(ofSize: 17)
        mobileSRBMSystemLable.textColor = UIColor.systemRed
        
        greatestLossesDirectionLable.textAlignment = .left
        greatestLossesDirectionLable.font = UIFont.systemFont(ofSize: 17)
        greatestLossesDirectionLable.textColor = UIColor.systemRed
        
        vehiclesAndFuelTanksLable.textAlignment = .left
        vehiclesAndFuelTanksLable.font = UIFont.systemFont(ofSize: 17)
        vehiclesAndFuelTanksLable.textColor = UIColor.systemRed
        
        cruiseMissilesLable.textAlignment = .left
        cruiseMissilesLable.font = UIFont.systemFont(ofSize: 17)
        cruiseMissilesLable.textColor = UIColor.systemRed
        
        view.addSubview(dateLable)
        view.addSubview(dayLable)
        view.addSubview(aircraftLable)
        view.addSubview(helicopterLable)
        view.addSubview(tankLable)
        view.addSubview(apcLable)
        view.addSubview(fieldArtilleryLable)
        view.addSubview(mrlLable)
        view.addSubview(militaryAutoLable)
        view.addSubview(fuelTankLable)
        view.addSubview(droneLable)
        view.addSubview(navalShipLable)
        view.addSubview(antiAircraftWarfareLable)
        view.addSubview(specialEquipmentLable)
        view.addSubview(mobileSRBMSystemLable)
        view.addSubview(greatestLossesDirectionLable)
        view.addSubview(vehiclesAndFuelTanksLable)
        view.addSubview(cruiseMissilesLable)
    }
    
    
    // MARK:- Setup Constraints
    
    func setupConstraints() {
        dateLable.translatesAutoresizingMaskIntoConstraints = false
        dateLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        dateLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        dateLable.bottomAnchor.constraint(equalTo: dayLable.topAnchor, constant: -8).isActive = true
        
        dayLable.translatesAutoresizingMaskIntoConstraints = false
        dayLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        dayLable.bottomAnchor.constraint(equalTo: aircraftLable.topAnchor, constant: -8).isActive = true
        
        aircraftLable.translatesAutoresizingMaskIntoConstraints = false
        aircraftLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        aircraftLable.bottomAnchor.constraint(equalTo: helicopterLable.topAnchor, constant: -8).isActive = true
        
        helicopterLable.translatesAutoresizingMaskIntoConstraints = false
        helicopterLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        helicopterLable.bottomAnchor.constraint(equalTo: tankLable.topAnchor, constant: -8).isActive = true
        
        tankLable.translatesAutoresizingMaskIntoConstraints = false
        tankLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        tankLable.bottomAnchor.constraint(equalTo: apcLable.topAnchor, constant: -8).isActive = true
        
        apcLable.translatesAutoresizingMaskIntoConstraints = false
        apcLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        apcLable.bottomAnchor.constraint(equalTo: fieldArtilleryLable.topAnchor, constant: -8).isActive = true
        
        fieldArtilleryLable.translatesAutoresizingMaskIntoConstraints = false
        fieldArtilleryLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        fieldArtilleryLable.bottomAnchor.constraint(equalTo: mrlLable.topAnchor, constant: -8).isActive = true
        
        mrlLable.translatesAutoresizingMaskIntoConstraints = false
        mrlLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        mrlLable.bottomAnchor.constraint(equalTo: militaryAutoLable.topAnchor, constant: -8).isActive = true
        
        militaryAutoLable.translatesAutoresizingMaskIntoConstraints = false
        militaryAutoLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        militaryAutoLable.bottomAnchor.constraint(equalTo: fuelTankLable.topAnchor, constant: -8).isActive = true
        
        fuelTankLable.translatesAutoresizingMaskIntoConstraints = false
        fuelTankLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        fuelTankLable.bottomAnchor.constraint(equalTo: droneLable.topAnchor, constant: -8).isActive = true
        
        droneLable.translatesAutoresizingMaskIntoConstraints = false
        droneLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        droneLable.bottomAnchor.constraint(equalTo: navalShipLable.topAnchor, constant: -8).isActive = true
        
        navalShipLable.translatesAutoresizingMaskIntoConstraints = false
        navalShipLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        navalShipLable.bottomAnchor.constraint(equalTo: antiAircraftWarfareLable.topAnchor, constant: -8).isActive = true
        
        antiAircraftWarfareLable.translatesAutoresizingMaskIntoConstraints = false
        antiAircraftWarfareLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        antiAircraftWarfareLable.bottomAnchor.constraint(equalTo: specialEquipmentLable.topAnchor, constant: -8).isActive = true
        
        specialEquipmentLable.translatesAutoresizingMaskIntoConstraints = false
        specialEquipmentLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        specialEquipmentLable.bottomAnchor.constraint(equalTo: mobileSRBMSystemLable.topAnchor, constant: -8).isActive = true
        
        mobileSRBMSystemLable.translatesAutoresizingMaskIntoConstraints = false
        mobileSRBMSystemLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        mobileSRBMSystemLable.bottomAnchor.constraint(equalTo: greatestLossesDirectionLable.topAnchor, constant: -8).isActive = true
        
        greatestLossesDirectionLable.translatesAutoresizingMaskIntoConstraints = false
        greatestLossesDirectionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        greatestLossesDirectionLable.bottomAnchor.constraint(equalTo: vehiclesAndFuelTanksLable.topAnchor, constant: -8).isActive = true
        
        vehiclesAndFuelTanksLable.translatesAutoresizingMaskIntoConstraints = false
        vehiclesAndFuelTanksLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        vehiclesAndFuelTanksLable.bottomAnchor.constraint(equalTo: cruiseMissilesLable.topAnchor, constant: -8).isActive = true
        
        cruiseMissilesLable.translatesAutoresizingMaskIntoConstraints = false
        cruiseMissilesLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    }
}
