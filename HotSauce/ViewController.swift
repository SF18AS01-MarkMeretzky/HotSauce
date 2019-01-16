//
//  ViewController.swift
//  HotSauce
//
//  Created by Instructor on 1/16/19.
//  Copyright © 2019 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchPressed(_ sender: UISwitch) {
        perform(#selector(confoundThem), with: self, afterDelay: 3);
        if sender.isOn {
            view.backgroundColor = .red;
        }
    }
    
    @objc func confoundThem() {
        //mySwitch.isOn = !mySwitch.isOn;   //suddenly
        mySwitch.setOn(!mySwitch.isOn, animated: true);
        
        if !mySwitch.isOn {
            //view.backgroundColor = .white;  //suddenly
            UIView.animate(
                withDuration: 3,
                delay: 3,
                options: [],
                animations: {
                    self.view.backgroundColor = .white;
                },
                completion: nil
            );
        }
    }
}

