//
//  BaseVIewController.swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import Foundation
import UIKit
import SnapKit


class BaseViewController: UIViewController {
    
    var navBarViews: UIView? = nil
    var secondBarViews: UIView? = nil
    var statusBarTitle: UILabel? = nil
    var statusMainBarTitle: UILabel? = nil
    var arrowBack: UIImageView? = nil
    
    let statusBarHeight = UIApplication.shared.connectedScenes
           .filter {$0.activationState == .foregroundActive }
           .map {$0 as? UIWindowScene }
           .compactMap { $0 }
           .first?.windows
           .filter({ $0.isKeyWindow }).first?
           .windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    
    
    func setupBackButton() {
        arrowBack = UIImageView()
        arrowBack?.isUserInteractionEnabled = true
        let cameraTap = UITapGestureRecognizer(target: self, action: #selector(cameraTapped))
        arrowBack?.addGestureRecognizer(cameraTap)
        arrowBack?.image = UIImage.init(named: "arrow_left")
        
        navBarViews?.addSubview(arrowBack ?? UIImageView())
        arrowBack?.snp.makeConstraints{ (make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(16)
        }
    }
    
    @objc func cameraTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        secondBarViews = UIView()
        navBarViews = UIView()
        let statusColor = UIColor.init(named: "#fff")
        secondBarViews?.backgroundColor = statusColor
        navBarViews?.backgroundColor = statusColor
        navBarViews?.layer.cornerRadius = 16
        navBarViews?.layer.masksToBounds = true
        navBarViews?.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]

        view.addSubview(navBarViews ?? UIView())
        navBarViews?.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(view.safeArea.top)
            make.height.equalTo(50)
        }
        
        view.addSubview(secondBarViews ?? UIView())
        secondBarViews?.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.bottom.equalTo((navBarViews ?? UIView()).snp.top)
        }
        
        statusBarTitle = UILabel()
        statusBarTitle?.textColor = .white
        statusBarTitle?.numberOfLines = 0
        statusBarTitle?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        statusMainBarTitle = UILabel()
        statusMainBarTitle?.textColor = .white
        statusMainBarTitle?.font = UIFont.init(name: "Gilroy-Bold", size: 16)

        navBarViews?.addSubview(statusBarTitle ?? UILabel())
        statusBarTitle?.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.left.equalToSuperview().offset(56)
            make.right.equalToSuperview().offset(-16)
        }
        
        navBarViews?.addSubview(statusMainBarTitle ?? UILabel())
        statusMainBarTitle?.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
}

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}
