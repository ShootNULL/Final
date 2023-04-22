//
//  ViewController.swift
//  TINF
//
//  Created by Евгений Парфененков on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let titleComponent = Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: true, title: "Title", desc: "Descrtiption")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpComponents()
    }
    
    
    
    func setUpComponents() {
                        
        view.addSubview(titleComponent)
        
        //NSLayoutConstraint.activate(titleComponentConstraints)
        
    }
}

