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
    
    
    

}
