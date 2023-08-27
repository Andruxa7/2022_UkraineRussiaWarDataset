//
//  Personnel.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 22.08.2023.
//

import Foundation

// MARK: - Personnel

struct Personnel: Codable {
    let date: String
    let day, personnel: Int
    let personnelPersonnel: PersonnelEnum
    let pow: Int?
    
    enum CodingKeys: String, CodingKey {
        case date, day, personnel
        case personnelPersonnel = "personnel*"
        case pow = "POW"
    }
}

enum PersonnelEnum: String, Codable {
    case about = "about"
    case more = "more"
}
