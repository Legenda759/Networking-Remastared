//
//  models.swift
//  Networking Remastared
//
//  Created by Legenda_759 on 24/03/22.
//

import Foundation

struct Post: Decodable{
    
    var name: String?
    var salary: String?
    var age: String?
    var userId: Int?
    var id: Int?
    
    init() {
        
    }
    
    init(name: String, salary: String, age: String){
        self.userId = 1
        self.id = 1
        self.name = name
        self.salary = salary
        self.age = age
    }
    
}
