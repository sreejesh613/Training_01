//
//  TPLoginViewController.swift
//  TrainingProject01
//
//  Created by Sreejesh on 11/2/16.
//  Copyright © 2016 GadgeonSmartSystems. All rights reserved.
//

import UIKit

class TPLoginViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginBtnAction(_ sender: AnyObject)
    {
        
    }
    @IBAction func onBackBtnAction(_ sender: AnyObject)
    {
        guard (navigationController?.popViewController(animated: true)) != nil else
        {
            dismiss(animated: true, completion: nil)
            return
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
