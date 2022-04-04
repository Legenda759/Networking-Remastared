//
//  PostView.swift
//  Networking Remastared
//
//  Created by Legenda_759 on 26/03/22.
//

import UIKit
import SnapKit

class PostView: BaseView {
    let name = UILabel()
    let age = UILabel()
    let salary = UILabel()
    
    let nameString = UILabel()
    let ageString = UILabel()
    let salaryString = UILabel()
    
    override func embedSubviews() {
        addSubview(name)
        addSubview(age)
        addSubview(salary)
        addSubview(nameString)
        addSubview(ageString)
        addSubview(salaryString)
    }
    
    override func addSubviewsConstraints() {
        
        nameString.snp.makeConstraints { make in
            make.left.top.equalToSuperview().inset(10)
        }
        
        ageString.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(10)
            make.top.equalTo(nameString.snp.bottom).offset(10)
        }
        
        salaryString.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(10)
            make.top.equalTo(ageString.snp.bottom).offset(10)
        }
        
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(10)
            make.left.equalTo(nameString.snp.right).offset(10)
        }
        
        age.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(10)
            make.left.equalTo(ageString.snp.right).offset(10)
        }
        
        salary.snp.makeConstraints { make in
            make.top.equalTo(age.snp.bottom).offset(10)
            make.left.equalTo(salaryString.snp.right).offset(10)
        }
        
    }
    
    override func initSubviews() {
//        nameString settings
        nameString.text = "Name:"
        nameString.font = UIFont.boldSystemFont(ofSize: 14)
        
//        ageString settings
        ageString.text = "Age:"
        ageString.font = UIFont.boldSystemFont(ofSize: 14)
        
//        salaryString settings
        salaryString.text = "Salary:"
        salaryString.font = UIFont.boldSystemFont(ofSize: 14)
        
//        name settings
        name.font = UIFont.systemFont(ofSize: 14)
        
//        age settings
        age.font = UIFont.systemFont(ofSize: 14)
        
//        salary settings
        salary.font = UIFont.systemFont(ofSize: 14)
        
    }
    
}
