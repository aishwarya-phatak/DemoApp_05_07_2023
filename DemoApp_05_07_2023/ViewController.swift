//
//  ViewController.swift
//  DemoApp_05_07_2023
//
//  Created by Vishal Jagtap on 05/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var userdataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load -- for view Controller")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear-- for View Controller")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear -- for view Controller")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("FVC - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("FVC - viewDidDisappear")
    }
    @IBAction func changeColourButton(_ sender: Any) {
        
        var secondViewControllerObject =  self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
    
        
        navigationController?.pushViewController(secondViewControllerObject!, animated: true)
        
//        print(sender.currentTitle)
//        print(sender.backgroundColor)
//        print(sender.buttonType)
        
        guard let textEnteredByuser = userdataTextField.text else {
            return
        }

        implementColourChange(text: textEnteredByuser)      //function call
        /*switch textEnteredByuser{
            case "one" :
                firstLabel.backgroundColor = .red
                secondLabel.backgroundColor = .brown
                thirdLabel.backgroundColor = .brown
            
            case "two" :
                firstLabel.backgroundColor = .brown
                secondLabel.backgroundColor = .red
                thirdLabel.backgroundColor = .brown
            
            case "three" :
                firstLabel.backgroundColor = .brown
                secondLabel.backgroundColor = .brown
                thirdLabel.backgroundColor = .red
            
            default:
                firstLabel.backgroundColor = .lightGray
                secondLabel.backgroundColor = .lightGray
                thirdLabel.backgroundColor = .lightGray
        }*/
    }

    func implementColourChange(text : String){
        
        if(text  == "one"){
            firstLabel.backgroundColor = .orange
            secondLabel.backgroundColor = .brown
            thirdLabel.backgroundColor = .brown
        } else if(text == "two"){
            firstLabel.backgroundColor = .brown
            secondLabel.backgroundColor = .orange
            thirdLabel.backgroundColor = .brown
        } else if(text == "three"){
            firstLabel.backgroundColor = .brown
            secondLabel.backgroundColor = .brown
            thirdLabel.backgroundColor = .orange
        } else {
            firstLabel.backgroundColor = .lightGray
            secondLabel.backgroundColor = .lightGray
            thirdLabel.backgroundColor = .lightGray
        }
    }
}
