//
//  ViewController.swift
//  AlertController
//
//  Created by Nikolay on 04.05.16.
//  Copyright © 2016 Nikolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }

    @IBAction func ShowAC(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Вход", message: "введите данные для входаю", preferredStyle: .Alert)
        
        let alertOkAction = UIAlertAction(title: "ОК", style: .Default, handler: nil)
        
        alertController.addTextFieldWithConfigurationHandler{(loginTF) in loginTF.placeholder = "Ваш логин"
        }
        
        alertController.addTextFieldWithConfigurationHandler{(passwordTF) in passwordTF.placeholder = "Ваш пароль"
            passwordTF.secureTextEntry = true
        }
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}

