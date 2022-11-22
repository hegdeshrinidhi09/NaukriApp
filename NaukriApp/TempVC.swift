//
//  TempVC.swift
//  NaukriApp
//
//  Created by Capgemini-DA078 on 16/11/22.
//

import UIKit

class TempVC: UIViewController {
    
    @IBOutlet var image: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 /*
    func tapGesture()  {
        let tap = UITapGestureRecognizer(target: self action: #selector(imageTapped))
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(tap)
    }
    @objc func imageTapped() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
