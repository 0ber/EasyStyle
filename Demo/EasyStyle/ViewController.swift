//
//  ViewController.swift
//  EasyStyle
//
//  Created by Alex K on 02/08/2018.
//  Copyright © 2018 0ber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logOutButton = UIButton()
        logOutButton.setStyle(.logOut) // set style

        let logInButton = UIButton()
        logInButton.setStyle(.logIn) // set style

        let stack = UIStackView(arrangedSubviews: [logOutButton, logInButton])
        stack.spacing = 20
        stack.distribution = .fillEqually
        view.addSubview(stack)
        
        // title
        let titleLabel = UILabel()
        titleLabel.setStyle(.easyStyle) // set style
        view.addSubview(titleLabel)
        
        // constraints hell
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        stack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // constraints hell
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        if #available(iOS 11.0, *) {
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        }
        titleLabel.bottomAnchor.constraint(equalTo: stack.topAnchor).isActive = true
        
    }
}

// MARK: Button Style
extension ButtonStyle {
    
    // style components
    private static let roundBorder = borderWidth(1) + cornerRadius(5)
    private static let h1 = titleFont(.systemFont(ofSize: 18))
    private static let roundH1 = roundBorder + h1
    
    private static let redButton = roundH1 + titleColor(#colorLiteral(red: 0.8980392157, green: 0.2274509804, blue: 0.2509803922, alpha: 1), .normal) + borderColor(#colorLiteral(red: 0.8980392157, green: 0.2274509804, blue: 0.2509803922, alpha: 1))
    private static let blueButton = roundH1 + titleColor(#colorLiteral(red: 0.1882352941, green: 0.662745098, blue: 0.8705882353, alpha: 1), .normal) + borderColor(#colorLiteral(red: 0.1882352941, green: 0.662745098, blue: 0.8705882353, alpha: 1))
    
    // create style
    static let logIn = ButtonStyle.create <<< blueButton + title("Login", .normal)
    static let logOut = ButtonStyle.create <<< redButton + title("Logout", .normal)
}

// MARK: Label Style
extension LabelStyle {
    
    // style components
    private static let h1 = font(.systemFont(ofSize: 28))
    private static let title = h1 + textColor(#colorLiteral(red: 0.4235294118, green: 0.2862745098, blue: 0.7215686275, alpha: 1)) + aligment(.center)

    // create style
    static let easyStyle = LabelStyle.create <<< title + text("Easy Style")
}

