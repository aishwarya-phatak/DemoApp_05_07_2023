//
//  SecondViewController.swift
//  DemoApp_05_07_2023
//
//  Created by Vishal Jagtap on 07/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SVC - viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("SVC - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("SVC - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("SVC - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("SVC - viewDidDisappear")
    }
    
    @IBAction func backToFVC(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
