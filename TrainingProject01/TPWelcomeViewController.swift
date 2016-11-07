//
//  TPWelcomeViewController.swift
//  TrainingProject01
//
//  Created by Sreejesh on 11/2/16.
//  Copyright © 2016 GadgeonSmartSystems. All rights reserved.
//

import UIKit
import CoreData

class TPWelcomeViewController: UIViewController {

    var personDetails = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func onSignupBtnAction(_ sender: AnyObject)
    {
        guard let VC = storyboard?.instantiateViewController(withIdentifier: "SignUpiewController") else
        {
            print("SignUpiewController not foud!!")
            return
        }
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func onLoinBtnAction(_ sender: AnyObject)
    {
        guard let VC = storyboard?.instantiateViewController(withIdentifier: "TPLoginViewController") else
        {
            print("TPLoginViewController not foud!!")
            return
        }
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func onFetchbtnAction(_ sender: AnyObject)
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let request: NSFetchRequest<NSFetchRequestResult> = PeopleDetails.fetchRequest()
        
        do
        {
        let results = try managedContext.fetch(request)
        personDetails = results as! [NSManagedObject]
        }catch let error as NSError{
            print("Could not fetch \(error)")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
