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
        self.profileHeaderView.backgroundColor = .systemGray4
        profileHeaderView.setupViews()
        setupLayout()
    }
    
    private func setupLayout(){
        view.addSubview(profileHeaderView)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
                                        profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                                        profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                                        profileHeaderView.heightAnchor.constraint(equalToConstant: 220)])
        profileHeaderView.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        profileHeaderView.avatarImageView.topAnchor.constraint(equalTo: profileHeaderView.topAnchor, constant: 16),
                                        profileHeaderView.avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)])
        profileHeaderView.setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        profileHeaderView.setStatusButton.topAnchor.constraint(equalTo: profileHeaderView.avatarImageView.bottomAnchor, constant: 16),
                                        profileHeaderView.setStatusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                                        profileHeaderView.setStatusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                                        profileHeaderView.setStatusButton.heightAnchor.constraint (equalToConstant: 50)])
        profileHeaderView.fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        profileHeaderView.fullNameLabel.topAnchor.constraint(equalTo: profileHeaderView.topAnchor, constant: 27),
                                        profileHeaderView.fullNameLabel.leadingAnchor.constraint(equalTo: profileHeaderView.centerXAnchor, constant: -47)])
        profileHeaderView.statusTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        profileHeaderView.statusTextField.bottomAnchor.constraint(equalTo: profileHeaderView.setStatusButton.topAnchor, constant: -34),
                                        profileHeaderView.statusTextField.leadingAnchor.constraint(equalTo: profileHeaderView.centerXAnchor, constant: -47)])
        profileHeaderView.setButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        profileHeaderView.setButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
                                        profileHeaderView.setButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                                        profileHeaderView.setButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)])
    }
    
    override func viewWillLayoutSubviews() {
    }
}
