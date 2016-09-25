//
//  RegisterPageViewController.swift
//  Event
//
//  Created by Dory Zhong on 9/23/16.
//  Copyright © 2016 Dory Zhong. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    
    @IBOutlet weak var EmailTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RegisterButtonTapped(_ sender: AnyObject) {
        
        let email = EmailTextField.text
        let password = PasswordTextField.text
        if (email!.isEmpty||password!.isEmpty){
        displayAlert(userMessage: "nima")
        }
    }
    
 
    
    func displayAlert(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)

        myAlert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(myAlert, animated: false, completion:nil)
        
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
