//
//  ViewController.swift
//  Auxilium
//
//  Created by Nassim Guettat on 27/01/2020.
//  Copyright © 2020 Nassim Guettat. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInController: UIViewController{

    //Outlet
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    //Properties
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBtn()
        setUpTf()
        
    }
    
    //Private Functions
    private func setUpBtn(){
        signInBtn.layer.cornerRadius = 20
        signUpBtn.layer.cornerRadius = 20
        
        signUpBtn.layer.borderWidth = 3
        signInBtn.layer.borderWidth = 3
        signUpBtn.layer.borderColor = UIColor.white.cgColor
        signInBtn.layer.borderColor = CGColor.init(srgbRed: 134, green: 112, blue: 133, alpha: 0)
    }
    
    private func setUpTf(){
        
        usernameTf.delegate = self
        passwordTf.delegate = self
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeybord))
        view.addGestureRecognizer(tapGesture)
            
    }

    //ACTIONS
    @IBAction func signInBtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
    @objc private func hideKeybord(){
        usernameTf.resignFirstResponder()
        passwordTf.resignFirstResponder()
    }

}

extension SignInController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
