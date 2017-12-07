//
//  ViewController.swift
//  eluxon
//
//  Created by Eswar Kosuri on 2017-12-06.
//  Copyright © 2017 Eswar Kosuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var onOffLabel: UILabel!
    @IBOutlet var toggleBtn: UIButton!
    var switchStatus:SwitchStaus = .off
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnWasPressed(_ sender: Any) {
        switchStatus.togglable()
        if switchStatus == .off{
            toggleBtn.setImage(UIImage(named:"offBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
            onOffLabel.text = "OFF"
            onOffLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        else{
            toggleBtn.setImage(UIImage(named:"onBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLabel.text = "ON"
            onOffLabel.textColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
        }
        
    }
    

}

