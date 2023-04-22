//
//  Title.swift
//  TINF
//
//  Created by Евгений Парфененков on 22.04.2023.
//

import Foundation
import UIKit

class Header: UIView {
    
    var cgRect: CGRect
    
    var opaqucity: CGFloat
    
    var header: String
    var subHeader: String
    var topButtonText: String
    var bottomButtonText: String
    
    var titles: [Title]
    var visibilityType: type
    
    enum type {
        case vertical
        case horizontal
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(cgRect: CGRect, opaqucity: CGFloat, header: String, subHeader: String, topButtonText: String, bottomButtonText: String, titles: [Title], visibilityType: type) {
        self.cgRect = cgRect
        self.opaqucity = opaqucity
        self.header = header
        self.subHeader = subHeader
        self.topButtonText = topButtonText
        self.bottomButtonText = bottomButtonText
        self.titles = titles
        self.visibilityType = visibilityType
        super.init(frame: cgRect)
        
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: self.frame.width, height: 72)
        setUpComponents()
    }
    
    private let headerTextView = UITextView()
    private let subHeaderTextView = UITextView()
    private let starImageView = UIImageView()
    private let topButtonView = UIButton()
    private let bottomButtonView = UIButton()
    
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
    
    private func setUpHeader() {        
        headerTextView.text = self.header
        headerTextView.font = .boldSystemFont(ofSize: 22)
        headerTextView.textColor = .black
        headerTextView.backgroundColor = .clear
        headerTextView.isScrollEnabled = false
        
        headerTextView.translatesAutoresizingMaskIntoConstraints = false
        
        var headerTextViewConstraints: [NSLayoutConstraint]
        
        if subHeader == "" {
            headerTextViewConstraints = [
                headerTextView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                headerTextView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            ]
        } else {
            headerTextViewConstraints = [
                headerTextView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
                headerTextView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            ]
        }
        
        
        addSubview(headerTextView)
        
        NSLayoutConstraint.activate(headerTextViewConstraints)
    }
    
    private func setUpSubHeader() {
        subHeaderTextView.text = self.subHeader
        subHeaderTextView.font = .systemFont(ofSize: 17)
        subHeaderTextView.textColor = .gray
        subHeaderTextView.backgroundColor = .clear
        subHeaderTextView.isScrollEnabled = false
        
        subHeaderTextView.translatesAutoresizingMaskIntoConstraints = false

        let subHeaderTextViewConstraints = [
            subHeaderTextView.topAnchor.constraint(equalTo: headerTextView.bottomAnchor, constant: -15),
            subHeaderTextView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
        ]
        
        addSubview(subHeaderTextView)
        
        NSLayoutConstraint.activate(subHeaderTextViewConstraints)
        
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: self.frame.width, height: self.frame.height + 14.0)

    }
    
    private func setUpStar() {
        starImageView.image = UIImage(named: "tuiAvatar") ?? .add
        starImageView.sizeToFit()
        
        starImageView.translatesAutoresizingMaskIntoConstraints = false
        let starImageViewConstraints = [
            starImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            starImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            starImageView.widthAnchor.constraint(equalToConstant: 40),
            starImageView.heightAnchor.constraint(equalToConstant: 40)
        ]
        addSubview(starImageView)
        NSLayoutConstraint.activate(starImageViewConstraints)
    }
    
    private func setUpBottomButton() {
        bottomButtonView.setTitle(bottomButtonText, for: .normal)
        bottomButtonView.setTitleColor(UIColor(red: 0.259, green: 0.545, blue: 0.976, alpha: 1), for: .normal)
        
        bottomButtonView.layer.cornerRadius = 12
        bottomButtonView.backgroundColor = UIColor(red: 0, green: 0.063, blue: 0.141, alpha: 0.03)
        
        bottomButtonView.translatesAutoresizingMaskIntoConstraints = false
        let bottomButtonViewConstraints = [
            bottomButtonView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            bottomButtonView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            bottomButtonView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            bottomButtonView.heightAnchor.constraint(equalToConstant: 44)
        ]
        addSubview(bottomButtonView)
        NSLayoutConstraint.activate(bottomButtonViewConstraints)
        
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: self.frame.width, height: self.frame.height + 60)
    }
    
    private func setUpTopButton() {
        topButtonView.setTitle(topButtonText, for: .normal)
        topButtonView.titleLabel?.font = .systemFont(ofSize: 17)
        topButtonView.setTitleColor(UIColor(red: 0.259, green: 0.545, blue: 0.976, alpha: 1), for: .normal)
        
        topButtonView.backgroundColor = .clear
        
        topButtonView.translatesAutoresizingMaskIntoConstraints = false
        let topButtonViewConstraints = [
            topButtonView.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            topButtonView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        ]
        addSubview(topButtonView)
        starImageView.isHidden = true
        subHeaderTextView.isHidden = true
        NSLayoutConstraint.activate(topButtonViewConstraints)
    }
    
    private func setUpTitlesVertical() {
        var currentAmount = 0
        
        for i in titles {
            i.layer.shadowOpacity = 0
            
            i.translatesAutoresizingMaskIntoConstraints = false
            
            var titleConstraints = [NSLayoutConstraint()]
            if currentAmount == 0 {
                titleConstraints = [
                    
                    i.topAnchor.constraint(equalTo: headerTextView.bottomAnchor, constant: 30),
                    i.leftAnchor.constraint(equalTo: self.leftAnchor)
                ]
            } else {
                titleConstraints = [
                    
                    i.topAnchor.constraint(equalTo: headerTextView.bottomAnchor, constant: CGFloat(currentAmount * 60 + 30)),
                    i.leftAnchor.constraint(equalTo: self.leftAnchor)
                ]
            }
            
            
            addSubview(i)
            NSLayoutConstraint.activate(titleConstraints)
            
            self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: self.frame.width, height: self.frame.height + 60.0)
            currentAmount += 1
        }
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: self.frame.width, height: self.frame.height - 20.0)
        starImageView.isHidden = true
        subHeaderTextView.isHidden = true
    }
    
    private func setUpTitlesHorizontal() {
        var currentAmount = 0
        
        let squares = UIScrollView()
        
        squares.backgroundColor = .clear
        
        squares.translatesAutoresizingMaskIntoConstraints = false
        let squaresConstraints = [
            
            squares.topAnchor.constraint(equalTo: headerTextView.bottomAnchor, constant: 5),
            squares.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),

            squares.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            squares.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
    
        ]
        
        addSubview(squares)
        NSLayoutConstraint.activate(squaresConstraints)
        
        
        var previousX = 0
        for i in titles {
            
            let square = UIView(frame: CGRect(x: 0, y: 0, width: 140, height: 140))
            square.backgroundColor = UIColor(red: 0, green: 0.063, blue: 0.141, alpha: 0.03)
            square.layer.cornerRadius = 12
            
            
            let imageView = UIImageView()
            let titleView = UITextView()
            let subTitleView = UITextView()
            
            imageView.image = UIImage(named: "tuiAvatar")
            
            subTitleView.text = i.desc
            subTitleView.font = .systemFont(ofSize: 13)
            subTitleView.textColor = .black
            subTitleView.backgroundColor = .clear
            subTitleView.isScrollEnabled = false
            
            titleView.text = i.title
            titleView.font = .boldSystemFont(ofSize: 15)
            titleView.textColor = .black
            titleView.backgroundColor = .clear
            titleView.isScrollEnabled = false
            
            imageView.frame = CGRect(x: 12, y: 12, width: 50, height: 50)
            subTitleView.frame = CGRect(x: 12, y: square.frame.maxY - 37, width: 100, height: 25)
            titleView.frame = CGRect(x: 12, y: square.frame.maxY - 63, width: 100, height: 30)
            
            square.addSubview(imageView)
            square.addSubview(subTitleView)
            square.addSubview(titleView)

            squares.addSubview(square)

            if currentAmount == 0 {
                square.frame = CGRect(x: 0, y: square.frame.minY, width: square.frame.width, height: square.frame.height)
            } else {
                square.frame = CGRect(x: CGFloat(previousX + 155), y: square.frame.minY, width: square.frame.width, height: square.frame.height)
            }
            previousX = Int(square.frame.minX)
            currentAmount += 1
            
        }
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: self.frame.width, height: self.frame.height + 140.0)
        starImageView.isHidden = true
        subHeaderTextView.isHidden = true
        squares.contentSize = CGSize(width: currentAmount * 155 + 5, height: 140)
    }
    
    private func setUpComponents() {
        setUpHeader()
        
        setUpStar()
        
        if subHeader != "" { setUpSubHeader() }
        if bottomButtonText != "" { setUpBottomButton() }
        if topButtonText != "" || titles.count > 0 { setUpTopButton() }
        
        if titles != [] {
            switch visibilityType {
            case .vertical:
                setUpTitlesVertical()
            case .horizontal:
                setUpTitlesHorizontal()
            }
        }
        
        
        
        setUpView()
    }
}
