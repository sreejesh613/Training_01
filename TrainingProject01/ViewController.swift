//
//  ViewController.swift
//  TrainingProject01
//
//  Created by Sreejesh on 11/2/16.
//  Copyright © 2016 GadgeonSmartSystems. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var person = [NSManagedObject]()
    
    @IBOutlet weak var nameTxtFld: UITextField!
    @IBOutlet weak var emailTxtFld: UITextField!
    @IBOutlet weak var genderSelectSwitch: UISwitch!
    @IBOutlet weak var genderDisplayLabel: UILabel!
    @IBOutlet weak var ageSelectSlider: UISlider!
    @IBOutlet weak var ageDisplayLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var passwordTxtFld: UITextField!
    @IBOutlet weak var confirmPswdTxtFld: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onSignUpBtnAction(_ sender: AnyObject)
    {
        print("Sign up button clicked!!")
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription .entity(forEntityName: "People", in: managedContext)
        let peopleDetails = NSManagedObject (entity: entity!, insertInto: managedContext)
        peopleDetails .setValue(nameTxtFld.text, forKey: "name")
        peopleDetails.setValue(emailTxtFld.text, forKey: "email")
        //peopleDetails.setValue(passwordTxtFld.text, forKey: "password")
        
        
        do{
            try managedContext.save()
            person.append(peopleDetails)
        }catch let error as NSError {
            print("could not save \(error)")
        }
        
    }
    
    @IBAction func onBackBtnAction(_ sender: AnyObject)
    {
        guard (navigationController?.popViewController(animated: true)) != nil
            else
        {
            dismiss(animated: true, completion: nil)
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

