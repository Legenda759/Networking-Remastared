//
//  PostTableViewCell.swift
//  Networking Remastared
//
//  Created by Legenda_759 on 26/03/22.
//

import UIKit
import SnapKit

class PostTableViewCell: UITableViewCell {
    
    let postView = PostView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        addSubview(postView)
        postView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(10)
            
        }
        // Configure the view for the selected state
    }
    
    func reload(item: decodableData) {
        postView.salary.text = String(item.employeeSalary ?? 0)
        postView.age.text = String(item.employeeAge ?? 0)
        postView.name.text = item.employeeName ?? " "
    }

}
