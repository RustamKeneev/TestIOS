//
//  HomeViewController.swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController, HomeDelegate {
    
    private lazy var homeViewModel: HomeViewModel = {
        return HomeViewModel(delegate: self)
    }()
    
    private lazy var characterLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.textColor = .black
        view.numberOfLines = 0
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(characterLabelTapped)))
        return view
    }()
    
    private lazy var locationLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.textColor = .black
        view.numberOfLines = 0
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(locationLabelTapped)))
        return view
    }()
    
    private lazy var episodeLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        view.textColor = .black
        view.numberOfLines = 0
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(episodeLabelTapped)))
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        homeViewModel.fetchData()
        configure()
    }
    
    func configure() {
        setupAddSubviews()
        setupAddConstraints()
    }
    
    func setupAddSubviews() {
        view.addSubview(characterLabel)
        view.addSubview(locationLabel)
        view.addSubview(episodeLabel)
    }
    
    func setupAddConstraints() {
        characterLabel.snp.makeConstraints { make in
            make.top.equalTo(navBarViews!.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(characterLabel.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        episodeLabel.snp.makeConstraints { make in
            make.top.equalTo(locationLabel.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }

    func showCharacters(models: URL) {
        characterLabel.text = models.absoluteString
    }

    func showLocations(models: URL) {
        locationLabel.text = models.absoluteString
    }

    func showEpisodes(models: URL) {
        episodeLabel.text = models.absoluteString
    }

    func showNotFound() {
        print("Not Found")
    }

    @objc func characterLabelTapped() {
//        if let url = URL(string: characterLabel.text ?? "") {
//            UIApplication.shared.open(url)
//        }
        
        if let url = URL(string: characterLabel.text ?? "") {
            let characterViewController = CharacterViewController()
            characterViewController.characterURL = url
            navigationController?.pushViewController(characterViewController, animated: true)
        }

    }

    @objc func locationLabelTapped() {
        if let url = URL(string: locationLabel.text ?? "") {
            UIApplication.shared.open(url)
        }
    }

    @objc func episodeLabelTapped() {
        if let url = URL(string: episodeLabel.text ?? "") {
            UIApplication.shared.open(url)
        }
    }
}
