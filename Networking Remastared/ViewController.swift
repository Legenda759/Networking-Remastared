//
//  ViewController.swift
//  Networking Remastared
//
//  Created by Legenda_759 on 24/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        apiPostSingle(id: 9885)
        apiPostList()
//        print(AFHttp.server(url: AFHttp.API_POST_SINGLE + String(1)))
        let post = Post(name: "Legenda_759", salary: "forever", age: "19")
        apiPostCreate(post: post)
        apiPostUpdate(post: post)
        apiPostDelete(post: post)
//        print(AFHttp.server(url: AFHttp.API_POST_DELETE + String(post.id!)))
    }
    
    func apiPostList() {
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostSingle(id: Int) {
        AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostCreate(post: Post) {
        AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(post: post), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostUpdate(post: Post) {
        AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostDelete(post: Post) {
        AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }

}

