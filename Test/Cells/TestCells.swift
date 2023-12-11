//
//  TestCells.swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import Foundation
import UIKit
import SnapKit
import Kingfisher

class TestCells: UITableViewCell{
    static let reuseIdentifierCell = "testAll"
    
    lazy var testImage: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 4
        return view
    }()
    
    lazy var testLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.textColor = .black
        view.numberOfLines = 0
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        setupAddSubView()
        setupMakeContraints()
    }
    
    func setupAddSubView()  {
        contentView.addSubview(testImage)
        contentView.addSubview(testLabel)
    }
    
    func setupMakeContraints() {
        testImage.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.bottom.equalToSuperview().inset(8)
            make.height.width.equalTo(36)
        }
       
    }
    
    func fill(data: Result) {
        testImage.kf.setImage(with: URL(string: "https://rickandmortyapi.com/api/character/avatar/\(data.image ?? "")"))
        testLabel.text = data.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
