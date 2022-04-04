//
//  DummyTableViewController.swift
//  Networking Remastared
//
//  Created by Legenda_759 on 25/03/22.
//

import UIKit
import SnapKit

class DummyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    var post: Post?
//    var array = [decodableData]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        apiPostList()
        
        
//        DBManager.manager.posts
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        apiPostList()
    }
    
    
    
    func initViews() {
        mainViewSettings()
        tableViewSettings()
    }
    
    func mainViewSettings() {
        self.view.backgroundColor = .white
        title = "Posts"
    }
    
    
    
//    MARK: - Table View
    
    func tableViewSettings() {
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
//        tableView.backgroundColor = .yellow
        self.tableView.snp.makeConstraints { make in
            make.left.right.bottom.top.equalToSuperview()
            
            tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "Cell")
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post?.data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = post!.data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PostTableViewCell
        cell.reload(item: model)
        //tableView.reloadData()
        return cell
    }
    
//  MARK: - JSON Parcing

    func apiPostList() {
        
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: { [self] response in
            switch response.result {
            case .success:
        
                post = try! JSONDecoder().decode(Post.self, from: response.data!)
                tableView.reloadData()
                    
                
            case let .failure(error):
                print(error)
            }
        })
        
    }


}

