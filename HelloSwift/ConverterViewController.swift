//
//  ConverterViewController.swift
//  HelloSwift
//
//  Created by Polina on 25.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit



class ConverterViewController: UIViewController {

    var converter = Converter(forwardRatio: 1 / 61.9,
                              bacwardRatio: 58.3,
                              precision: 2)
    

    @IBOutlet weak var converterView: ConverterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        
        
    }
    
    func setup() {
        converterView.delegate = self
    }

}

extension ConverterViewController: ConverterViewDelegate {
    
    func convrterView(view: ConverterView, converForward value: String?) {
        guard let rubText = value,
              let rubles = Double(rubText.filterForNumberConvertion)
        else {
            view.toValue = "Ошибка :("
            return
        }
        let euroes = converter.convertForward(amount: rubles)
        view.toValue = "\(euroes) €"
    }
    
    
    
    func converterView(view: ConverterView, converBackward value: String?) {
        guard let euroText = value,
              let euro = Double(euroText.filterForNumberConvertion)
        else {
            view.fromValue = ":((("
            return
        }
        let rubles = converter.converyBackward(amount: euro)
        view.fromValue = "\(rubles) ₽"
    }
}















