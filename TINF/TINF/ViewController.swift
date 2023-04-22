//
//  ViewController.swift
//  TINF
//
//  Created by Евгений Парфененков on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var titles = [
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description"),
        Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 80), opaqucity: 1, withCross: false, title: "Title", desc: "Description")
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleComponent = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "", bottomButtonText: "", titles: titles, visibilityType: .vertical)
        view.addSubview(titleComponent)
        setUpComponents()
    }
    
    
    
    func setUpComponents() {
                        
        
        
        //NSLayoutConstraint.activate(titleComponentConstraints)
        
    }
}

