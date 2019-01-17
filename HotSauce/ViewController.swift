//
//  ViewController.swift
//  HotSauce
//
//  Created by Instructor on 1/16/19.
//  Copyright © 2019 Instructor. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchPressed(_ sender: UISwitch) {
        //Call another method of the ViewController (namely, the confoundThem method).
        perform(#selector(confoundThem), with: nil, afterDelay: 3);
  
        if sender.isOn {
            view.backgroundColor = .red;
        }
    }
    
    @objc func confoundThem() {
        //mySwitch.isOn = !mySwitch.isOn;   //suddenly
        mySwitch.setOn(!mySwitch.isOn, animated: true);
        
        if !mySwitch.isOn {
            //view.backgroundColor = .white; //suddenly
            
            //A type method with five arguments.
            //The fourth argument is a closure.
       
            UIView.animate(
                withDuration: 3,
                delay: 3,
                options: [],
                animations: {
                    self.view.backgroundColor = .white; //gradually
                },
                completion: nil
            );
        }
    }
}

