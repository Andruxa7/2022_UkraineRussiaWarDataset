//
//  PersonelDetailsViewController+Extension.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 26.08.2023.
//

import Foundation
import UIKit

extension PersonelDetailsViewController {
    //I understand that the view controller file is not very large and it was possible not to make this extension and leave these methods in the view controller. But I decided to do this in order to demonstrate what I understand how to make extensions for controllers in the case when they are very large for readability of the code.
    
    
    // MARK:- Add the subviews
    
    func addViews() {
        dateLable.textAlignment = .left
        dateLable.font = UIFont.systemFont(ofSize: 17)
        dateLable.textColor = UIColor.blue
        
        dayLable.textAlignment = .left
        dayLable.font = UIFont.systemFont(ofSize: 17)
        dayLable.textColor = UIColor.blue
        
        personnelLabel.textAlignment = .left
        personnelLabel.font = UIFont.systemFont(ofSize: 17)
        personnelLabel.textColor = UIColor.blue
        
        personnel_Lable.textAlignment = .left
        personnel_Lable.font = UIFont.systemFont(ofSize: 17)
        personnel_Lable.textColor = UIColor.blue
        
        powLable.textAlignment = .left
        powLable.font = UIFont.systemFont(ofSize: 17)
        powLable.textColor = UIColor.blue
        
        view.addSubview(dateLable)
        view.addSubview(dayLable)
        view.addSubview(personnelLabel)
        view.addSubview(personnel_Lable)
        view.addSubview(powLable)
    }
    
    
    // MARK:- Setup Constraints
    
    func setupConstraints() {
        dateLable.translatesAutoresizingMaskIntoConstraints = false
        dateLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        dateLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        dateLable.bottomAnchor.constraint(equalTo: dayLable.topAnchor, constant: -8).isActive = true
        
        dayLable.translatesAutoresizingMaskIntoConstraints = false
        dayLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        dayLable.bottomAnchor.constraint(equalTo: personnelLabel.topAnchor, constant: -8).isActive = true
        
        personnelLabel.translatesAutoresizingMaskIntoConstraints = false
        personnelLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        personnelLabel.bottomAnchor.constraint(equalTo: personnel_Lable.topAnchor, constant: -8).isActive = true
        
        personnel_Lable.translatesAutoresizingMaskIntoConstraints = false
        personnel_Lable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        personnel_Lable.bottomAnchor.constraint(equalTo: powLable.topAnchor, constant: -8).isActive = true
        
        powLable.translatesAutoresizingMaskIntoConstraints = false
        powLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    }
    
}
