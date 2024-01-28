//
//  SearchViewController.swift
//  RecapAssignment
//
//  Created by cho on 1/28/24.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController, CodeBase {

    let searchBar = UISearchBar()
    let recentLabel = UILabel()
    let allDelete = UILabel()
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        navigationItem.title = "모아나의 새싹쇼핑"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: "SearchTableViewCell")
        
        setAddView()
        setAttribute()
        setLayout()
        
    }
    
    func setAddView() {
        view.addSubview(searchBar)
        view.addSubview(recentLabel)
        view.addSubview(allDelete)
        view.addSubview(tableView)
    }
    
    func setAttribute() {
        searchBar.placeholder = "브랜드, 상품, 프로필, 태그 등"
        searchBar.searchBarStyle = .minimal
        
        recentLabel.text = "최근 검색"
        recentLabel.textColor = .white
        recentLabel.font = .boldSystemFont(ofSize: 16)
        
        allDelete.text = "모두 지우기"
        allDelete.textColor = .green
        
        tableView.backgroundColor = .black

    }
    
    func setLayout() {
        searchBar.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(10)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(44)
        }
        
        recentLabel.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.leading.equalTo(view).offset(10)
            make.height.equalTo(24)
        }
        
        allDelete.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.trailing.equalTo(view).inset(10)
            make.height.equalTo(24)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(recentLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
    }
    

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        
        return cell
    }
    
    
}

#Preview {
    MainTabBarController()
}
