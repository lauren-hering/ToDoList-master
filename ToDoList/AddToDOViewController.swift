//
//  AddToDOViewController.swift
//  ToDoList
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Lauren Hering. All rights reserved.
//

import UIKit


class AddToDOViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
              let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
              
              if let titleText = titleTextField.text {
                  toDo.name = titleText
                  toDo.important = importantSwitch.isOn
              }
              
              
              try? context.save()
                     
              navigationController?.popViewController(animated: true)
          }
         
          
      }
    }

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




