//
//  ToDoCell.swift
//  ToDoAppFirebase
//
//  Created by macbook on 02.02.2023.
//

import UIKit
import SnapKit

class ToDoCell: UITableViewCell {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .black
        label.text = "Title text"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .black
        label.text = "Status text"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.leading.trailing.top.equalTo(8)
            //make.bottom.equalTo(16)
        }
        
        self.addSubview(statusLabel)
        statusLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(8)
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            
        }
    }
}
