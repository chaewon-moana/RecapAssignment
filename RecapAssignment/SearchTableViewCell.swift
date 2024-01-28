//
//  SearchTableViewCell.swift
//  RecapAssignment
//
//  Created by cho on 1/28/24.
//

import UIKit
import SnapKit

class SearchTableViewCell: UITableViewCell, CodeBase {

    let searchImage = UIImageView()
    let searchesLabel = UILabel()
    let deleteButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setAddView()
        setAttribute()
        setLayout()

    }
    
    func setAddView() {
        contentView.addSubview(searchImage)
        contentView.addSubview(searchesLabel)
        contentView.addSubview(deleteButton)
    }
    
    func setAttribute() {
        
        contentView.backgroundColor = .black
        
        searchImage.image = UIImage(systemName: "magnifyingglass")
        searchImage.contentMode = .scaleAspectFill
        searchImage.tintColor = .white
        
        searchesLabel.text = "테스트테스트테스트테스트"
        searchesLabel.textColor = .gray
        searchesLabel.font = .systemFont(ofSize: 14)
        
        deleteButton.setImage(UIImage(systemName: "multiply"), for: .normal)
        deleteButton.tintColor = .gray
    }
    
    func setLayout() {
        searchImage.snp.makeConstraints { make in
            make.width.height.equalTo(20)
            make.leading.equalTo(contentView).offset(12)
            make.centerY.equalTo(contentView)
        }
        
        searchesLabel.snp.makeConstraints { make in
            make.leading.equalTo(searchImage.snp.trailing).offset(20)
            make.centerY.equalTo(contentView)
            make.height.equalTo(30)
        }
        
        deleteButton.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.trailing.equalTo(contentView).offset(-14)
            make.centerY.equalTo(contentView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

#Preview {
    MainTabBarController()
}
