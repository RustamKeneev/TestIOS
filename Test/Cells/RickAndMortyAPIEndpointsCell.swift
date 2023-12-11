//
//  RickAndMortyAPIEndpointsCell.swift
//  Test
//
//  Created by Rustam Keneev on 10/12/23.
//

import Foundation
import UIKit
import SnapKit

class RickAndMortyAPIEndpointsCell: UITableViewCell{
    static let reuseIdentifierCell = "RickAndMortyAPIEndpointsCell"
    
    lazy var rickAndMortyAPIEndpointsLabel: UILabel = {
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
        contentView.addSubview(rickAndMortyAPIEndpointsLabel)
    }
    
    func setupMakeContraints() {
        rickAndMortyAPIEndpointsLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.bottom.equalToSuperview().inset(8)
        }
       
    }
    
    func fill(data: RickAndMortyAPIEndpoints) {
//        rickAndMortyAPIEndpointsLabel.text = """
//            Characters: \(data.characters ?? "N/A")
//            Locations: \(data.locations ?? "N/A")
//            Episodes: \(data.episodes ?? "N/A")
//        """
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
