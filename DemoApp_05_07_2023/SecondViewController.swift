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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
