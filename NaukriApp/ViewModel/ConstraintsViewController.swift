//
//  ConstraintsViewController.swift
//  NaukriApp
//
//  Created by Capgemini-DA078 on 15/11/22.
//

import UIKit

class ConstraintsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
    // MARK: Extension for Validating constraints
    extension String {

    // MARK: function for email validation
    func ValidateEmailId() ->Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z0-9a-z]{2,3}"
    return applyPredicateOnRegex(regexStr: emailRegEx)
    }
    // MARK: Function for password validation
    func ValidatePassword() -> Bool {
    //min 6 char atleast 1 alphabet and 1 num
    var passRegEx = ""
    passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{6,}$"
    /* if min >= max {
    passRegEx = "^(?=.*[A-Za-z0-9])(?=.*\\d[A-Za-z0-9\\d]{\(min),}$"
    }
    else {
    passRegEx = "^(?=.*[A-Za-z0-9])(?=.*\\d)[A-Za-z0-9\\d]{\(min),\(max)}$"
    } */
    return applyPredicateOnRegex(regexStr: passRegEx)
    }
    // MARK: Function for name validation
    func ValidateName(min: Int = 4, max: Int = 20) -> Bool {
    var nameRegEx = ""
    if min >= max {
    nameRegEx = "^(?=.*[A-Za-z])[A-Za-z]{\(min),}$" }
    else {
    nameRegEx = "^(?=.*[A-Za-z])[A-Za-z]{\(min),\(max)}$"
    }
    return applyPredicateOnRegex(regexStr: nameRegEx)
    }
    // MARK: Function for mobile validation
    func ValidateMobileNumber() -> Bool {
    do {
    let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
    let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
    if let res = matches.first {
    return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count && self.count == 10
    }
    else {
    return false
    }
    }
    catch {
    return false
    }
    }
        
    // MARK: Regex Function
    func applyPredicateOnRegex(regexStr: String) -> Bool {
    let trimmedString = self.trimmingCharacters(in: .whitespaces)
    let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
    let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
    return isValidateOtherString
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


