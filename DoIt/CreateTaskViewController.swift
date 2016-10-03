//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Kenneth Fransson on 02/10/16.
//  Copyright © 2016 Kenneth Fransson. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
      //  task.name = taskNameTextField.text!
      //  task.important = importantSwitch.isOn
        
        if let newTask = taskNameTextField.text, !(taskNameTextField.text!.isEmpty) {
            task.name = newTask
            task.important = importantSwitch.isOn
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            // Pop back
            navigationController!.popViewController(animated: true)
        }
        
        
        
    }

    
}
