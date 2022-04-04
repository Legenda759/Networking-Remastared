//
//  models.swift
//  Networking Remastared
//
//  Created by Legenda_759 on 24/03/22.
//

import Foundation

// MARK: - Welcome
struct Post: Codable {
    let status: String?
    let data: [decodableData]
    let message: String?
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case data = "data"
        case message = "message"
    }
}

// MARK: - Datum
struct decodableData: Codable {
    let id: Int?
    let employeeName: String?
    let employeeSalary, employeeAge: Int?
    let profileImage: String?

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}

