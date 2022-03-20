//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Suharik on 14.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews(){
        self.addSubview(setStatusButton)
        self.addSubview(avatarImageView)
        self.addSubview(fullNameLabel)
        self.addSubview(statusTextField)
    }
    var setStatusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.frame = CGRect(x: 16, y: 152, width: 378, height: 50)
        button.layer.cornerRadius = 14
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.setTitle("Показать статус", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()
    
    var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ava")
        image.frame = CGRect(x: 16, y: 16, width: 120, height: 120)
        image.layer.cornerRadius = (image.frame.size.width) / 2
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = true
        return image
    }()
    
    var fullNameLabel: UILabel = {
        let name = UILabel()
        name.text = "Сухарик"
        name.font = .systemFont(ofSize: 24)
        name.frame = CGRect(x: 160, y: 27, width: 100, height: 30)
        name.textColor = .black
        return name
    }()
    
    var statusTextField: UITextField = {
        let text = UITextField()
        text.textColor = .darkGray
        text.attributedPlaceholder = NSAttributedString.init(string: "Чего-то ждем...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        text.frame = CGRect(x: 160, y: 98, width: 250, height: 20)
        return text
    }()
    
    
    @objc func buttonPressed(){
        if let textLine = statusTextField.text{
            print(textLine)
        }
    }
}
