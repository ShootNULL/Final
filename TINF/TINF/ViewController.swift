//
//  ViewController.swift
//  TINF
//
//  Created by Евгений Парфененков on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    let titleComponent0 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "", bottomButtonText: "", titles: [], visibilityType: .vertical)
    let titleComponent1 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 0.7, header: "Header", subHeader: "Subheader", topButtonText: "", bottomButtonText: "", titles: [], visibilityType: .vertical)
    let titleComponent2 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "", topButtonText: "", bottomButtonText: "", titles: [], visibilityType: .vertical)
    let titleComponent3 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 0.7, header: "Header", subHeader: "", topButtonText: "", bottomButtonText: "", titles: [], visibilityType: .vertical)
    let titleComponent4 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "", bottomButtonText: "Button", titles: [], visibilityType: .vertical)
    let titleComponent5 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 0.7, header: "Header", subHeader: "Subheader", topButtonText: "", bottomButtonText: "Button", titles: Mocks.titles, visibilityType: .vertical)
    
    let titleComponent6 = Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, withCross: false, title: "Title", desc: "Description")
    let titleComponent7 = Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 0.7, withCross: false, title: "Title", desc: "Description")
    let titleComponent8 = Title(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, withCross: true, title: "Title", desc: "Description")

    let titleComponent9 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "Button", bottomButtonText: "Button", titles: Mocks.titles, visibilityType: .vertical)
    let titleComponent10 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 0.7, header: "Header", subHeader: "Subheader", topButtonText: "Button", bottomButtonText: "Button", titles: Mocks.titles, visibilityType: .vertical)
    let titleComponent11 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "Button", bottomButtonText: "", titles: Mocks.titles, visibilityType: .vertical)
    let titleComponent12 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 0.7, header: "Header", subHeader: "Subheader", topButtonText: "Button", bottomButtonText: "", titles: Mocks.titles, visibilityType: .vertical)
    let titleComponent13 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "Button", bottomButtonText: "Button", titles: Mocks.titles, visibilityType: .horizontal)
    let titleComponent14 = Header(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), opaqucity: 1, header: "Header", subHeader: "Subheader", topButtonText: "Button", bottomButtonText: "", titles: Mocks.titles, visibilityType: .horizontal)
    let titleComponent15 = PerfectButton(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), text: "Button")
    let titleComponent16 = PerfectButton(cgRect: CGRect(x: 15, y: 100, width: 343, height: 72), text: "Button")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleComponent16.isHighlighted = true
        view.addSubview(titleComponent0)
    }
    

}

