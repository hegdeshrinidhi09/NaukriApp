//
//  RegisterScreen.swift
//  NaukriApp
//
//  Created by Capgemini-DA078 on 13/11/22.
//

import UIKit

class RegisterScreen: UIViewController, UITextFieldDelegate {
// IBOutlets
    //Buttons
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var showButton: UIButton!
    
    //Labels
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameErrorLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var emailErrorLabel: UILabel!
    @IBOutlet var createPasswordLabel: UILabel!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var mobileNumLabel: UILabel!
    @IBOutlet var mobileLabel: UILabel!
    
    //Text Fields
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var mobileNumTextField: UITextField!
    @IBOutlet var optionalTextField: UITextField!
    @IBOutlet var docTextField: UITextField!
    @IBOutlet var showTextField: UITextField!
    //Views
    @IBOutlet var nameView: UIView!
    @IBOutlet var emailView: UIView!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var mobileNumView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Removing border on textField
        optionalTextField.borderStyle = .none
    
        //Corner Radius for register button
        applyCornerRadius(radiusValue: 20)
        
        //textField colour change on selection
        //nameLabel.delegate = self
        //nameView.delegate = self
       // nameTextField.delegate = self
        
        //textFieldColourChange(nameTextField)
    }
    
    // MARK: Corner radius function for buttons
    private func applyCornerRadius(radiusValue: CGFloat) {
        registerButton.layer.cornerRadius = radiusValue
    }
    
    @IBAction func showButtonAction(_ sender: Any) {
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (sender as! UIButton).isSelected {
            self.passwordTextField.isSecureTextEntry = false
            showTextField.text = "Hide"
        } else {
            self.passwordTextField.isSecureTextEntry = true
            showTextField.text = "Show"
        }
    }
    func textFieldColourChange(_ textField: UITextField) {
        nameView.backgroundColor = .blue
        nameLabel.textColor = . blue
    }
/*
    @IBAction func updateResumeButton(_ sender: Any) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "TempGalleryVC") as! TempGalleryVC
        self.navigationController?.pushViewController(VC, animated: true)
    }
    */
    @IBAction func nameTxtFldAction(_ sender: Any) {
        let text = nameTextField.text
        if(text == "") {
            nameView.backgroundColor = UIColor.red
            //nameLabel.textColor = UIColor.red
            nameErrorLabel.text = "Full name is required"
            nameErrorLabel.textColor = UIColor.red
        }
        else if (!(text?.ValidateName())!){
            nameView.backgroundColor = UIColor.red
            nameErrorLabel.text = "Full name is not valid"
            nameErrorLabel.textColor = UIColor.red
        }
        else if((text != nil) == text?.ValidateName()) {
            nameView.backgroundColor = UIColor.gray
            nameLabel.textColor = UIColor.gray
            nameErrorLabel.text = ""
            nameErrorLabel.textColor = UIColor.gray
        }
    }
    @IBAction func emailTxtFldAction(_ sender: Any) {
        let text = emailTextField.text
        if(text == "") {
            emailView.backgroundColor = UIColor.red
            emailErrorLabel.text = "Email Address is required"
            emailErrorLabel.textColor = UIColor.red
        }
        else if (!(text?.ValidateEmailId())!){
            emailView.backgroundColor = UIColor.red
            emailErrorLabel.text = "Email Address is not valid"
            emailErrorLabel.textColor = UIColor.red
        }
        else if((text != nil) == text?.ValidateEmailId()) {
            emailView.backgroundColor = UIColor.gray
            emailLabel.textColor = UIColor.gray
            emailErrorLabel.text = ""
            emailErrorLabel.textColor = UIColor.gray
        }
    }
    
  /*
    @IBAction func passwordTxtFldAction(_ sender: Any) {
        let text = passwordTextField.text
        if(text == "") {
            passwordView.backgroundColor = UIColor.red
            passwordLabel.text = "Password is required"
            passwordLabel.textColor = UIColor.red
        }
        else if (!(text?.ValidateEmailId())!){
            passwordView.backgroundColor = UIColor.red
            passwordLabel.text = "Password is not valid"
            passwordLabel.textColor = UIColor.red
        }
        else if((text != nil) == text?.ValidatePassword()) {
            passwordView.backgroundColor = UIColor.gray
            passwordLabel.textColor = UIColor.gray
            passwordLabel.text = ""
            passwordLabel.textColor = UIColor.gray
        }
    }
    
    @IBAction func mobileNumTxtFldAction(_ sender: Any) {
        let text = mobileNumTextField.text
        if(text == "") {
            mobileNumView.backgroundColor = UIColor.red
            mobileLabel.text = "Please Enter a valid Mobile Number  of 10 digits"
            mobileLabel.textColor = UIColor.red
        }
        else if (!(text?.ValidateMobileNumber())!){
            mobileNumView.backgroundColor = UIColor.red
            mobileLabel.text = "Please Enter a valid Mobile Number  of 10 digits"
            mobileLabel.textColor = UIColor.red
        }
        else if((text != nil) == text?.ValidateMobileNumber()) {
            mobileNumView.backgroundColor = UIColor.gray
            mobileLabel.textColor = UIColor.gray
            mobileLabel.text = ""
            mobileLabel.textColor = UIColor.gray
        }       }
    */
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.    }*/

}
