//
//  ViewController.swift
//  udacityTrainningCourse
//
//  Created by Eslam Moemen on 6/3/18.
//  Copyright © 2018 udacity. All rights reserved.


import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var textinput: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopButton.isEnabled = false
        textinput.delegate = self
        textView.isEditable = false
       
        
    }
    
    //hide keyboard when touching anywhere esle but textinput
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     // hide keyboard when hitting return
        
        // textinput.resignFirstResponder()
        textView.text = textinput.text
        return true
    }
  
    
    @IBAction func recordAction(_ sender: Any) {
        recordButton.isEnabled = false
        stopButton.isEnabled = true
        statusLabel.text = "Recording"
    }
   
    @IBAction func stopAction(_ sender: Any) {
        recordButton.isEnabled = true
        stopButton.isEnabled = false
        statusLabel.text = "Stopped"
    }
    
    
    

}

