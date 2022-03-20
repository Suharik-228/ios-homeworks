//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Suharik on 11.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeaderView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Мой профиль"
        view.backgroundColor = .white
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.view.addSubview(self.profileHeaderView)
        view.frame.origin = CGPoint(x: 0, y: self.view.safeAreaInsets.top)
        self.profileHeaderView.frame = self.view.frame
        self.profileHeaderView.backgroundColor = .systemGray4
        
    }
}
