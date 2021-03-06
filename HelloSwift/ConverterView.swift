//
//  ConverterView.swift
//  HelloSwift
//
//  Created by Polina on 25.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

protocol ConverterViewDelegate: class {
    func convrterView(view: ConverterView, converForward value: String?)
    func converterView(view: ConverterView, converBackward value: String?)
}

class ConverterView: UIView {

   weak var delegate: ConverterViewDelegate?
   
    
    var toValue: String? {
        set {
            toTextField?.text = newValue
        }
        get {
            return toTextField?.text
        }
    }
    
    
    var fromValue: String? {
        set {
            fromTextField?.text = newValue
        }
        get {
            return fromTextField?.text
        }
    }
    
    @IBOutlet private weak var toTextField: UITextField? {
        didSet {
            toTextField?.delegate = self
        }
    }
    @IBOutlet private weak var fromTextField: UITextField? {
        didSet {
            fromTextField?.delegate = self
        }
    }
    
    
    @IBAction func forwardPressed() {
        delegate?.convrterView(view: self, converForward: fromValue)
    }
    
    @IBAction func backwardPressed() {
        delegate?.converterView(view: self, converBackward: fromValue)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup () {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        
        
    }

    
}


extension ConverterView: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        textField.text = textField.text?.filterForNumberConvertion
    }
}








