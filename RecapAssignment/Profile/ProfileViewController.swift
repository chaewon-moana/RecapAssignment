//
//  ProfileViewController.swift
//  RecapAssignment
//
//  Created by cho on 1/28/24.
//

import UIKit

class ProfileViewController: UIViewController, CodeBase {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationItem.title = "설정"
        
        setAddView()
        setAttribute()
        setLayout()
    }
    
    func setAddView() {
        
    }
    
    func setAttribute() {
        
    }
    
    func setLayout() {
        
    }
}
