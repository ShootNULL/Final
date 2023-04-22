//
//  Title.swift
//  TINF
//
//  Created by Евгений Парфененков on 22.04.2023.
//

import Foundation
import UIKit

class Title: UIView {
    
    var cgRect: CGRect
        
    var opaqucity: CGFloat
    var withCross: Bool
    
    var title: String
    var desc: String
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(cgRect: CGRect, opaqucity: CGFloat, withCross: Bool, title: String, desc: String) {
        self.cgRect = cgRect
        self.opaqucity = opaqucity
        self.withCross = withCross
        self.title = title
        self.desc = desc
        super.init(frame: cgRect)
        
        setUpComponents()
    }
    
    private let titleTextView = UITextView()
    private let descriptionTextView = UITextView()
    private let starImageView = UIImageView()
    private let crossImageView = UIImageView()
    
    private func setUpView() {
        self.layer.cornerRadius = 24
        self.backgroundColor = UIColor(named: "AccentColor")?.withAlphaComponent(opaqucity)
        
        if self.opaqucity == 1 {
            self.backgroundColor = .white
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 0.12
            self.layer.shadowOffset = .zero
            self.layer.shadowRadius = 10
            self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
            self.layer.shouldRasterize = true
            self.layer.rasterizationScale = UIScreen.main.scale
        }
    }
    
    private func setUpStar() {
        starImageView.image = UIImage(named: "tuiAvatar") ?? .add
        
        starImageView.translatesAutoresizingMaskIntoConstraints = false
        let starImageViewConstraints = [
            starImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            starImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            starImageView.widthAnchor.constraint(equalToConstant: 40),
            starImageView.heightAnchor.constraint(equalToConstant: 40)
        ]
        addSubview(starImageView)
        NSLayoutConstraint.activate(starImageViewConstraints)
    }
    
    private func setUpTitle() {
        titleTextView.text = self.title
        titleTextView.font = .systemFont(ofSize: 19)
        titleTextView.textColor = .black
        titleTextView.backgroundColor = .clear
        
        titleTextView.translatesAutoresizingMaskIntoConstraints = false
        let titleTextViewConstraints = [
            titleTextView.topAnchor.constraint(equalTo: starImageView.topAnchor, constant: -10),
            titleTextView.leftAnchor.constraint(equalTo: starImageView.rightAnchor, constant: 15),
            titleTextView.widthAnchor.constraint(equalToConstant: 100),
            titleTextView.heightAnchor.constraint(equalToConstant: 40)
        ]
        addSubview(titleTextView)
        
        NSLayoutConstraint.activate(titleTextViewConstraints)
    }
    
    private func setUpDescription() {
        descriptionTextView.text = self.desc
        descriptionTextView.font = .systemFont(ofSize: 15)
        descriptionTextView.textColor = .gray
        descriptionTextView.backgroundColor = .clear
        
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        let descriptionTextViewConstraints = [
            descriptionTextView.bottomAnchor.constraint(equalTo: starImageView.bottomAnchor, constant: 0),
            descriptionTextView.leftAnchor.constraint(equalTo: starImageView.rightAnchor, constant: 15),
            descriptionTextView.widthAnchor.constraint(equalToConstant: 100),
            descriptionTextView.heightAnchor.constraint(equalToConstant: 25)
        ]
        addSubview(descriptionTextView)
        
        NSLayoutConstraint.activate(descriptionTextViewConstraints)
    }
    
    private func setUpCross() {
        crossImageView.image = UIImage(named: "crossIcon") ?? .remove

        crossImageView.translatesAutoresizingMaskIntoConstraints = false
        let crossImageViewConstraints = [
            crossImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 17),
            crossImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -17),
            crossImageView.widthAnchor.constraint(equalToConstant: 24),
            crossImageView.heightAnchor.constraint(equalToConstant: 24)
        ]
        addSubview(crossImageView)
        NSLayoutConstraint.activate(crossImageViewConstraints)

    }
    
    private func setUpComponents() {
        setUpView()
        
        setUpStar()
        setUpTitle()
        setUpDescription()
        
        if withCross && opaqucity == 1 { setUpCross() }
    }
}




class Header: UIView {
    
    var cgRect: CGRect
    
    var opaqucity: Bool
    
    var header: String
    var subHeader: String
    var buttons: [UIButton]
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(cgRect: CGRect, opaqucity: Bool, header: String, subHeader: String, buttons: [UIButton]) {
        self.cgRect = cgRect
        self.opaqucity = opaqucity
        self.header = header
        self.subHeader = subHeader
        self.buttons = buttons
        super.init(frame: cgRect)
    }
}
