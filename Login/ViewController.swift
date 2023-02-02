//
//  ViewController.swift
//  Login
//
//  Created by Juliana Nielson on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }

    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: sender)
    }
    
    
    @IBAction func forgotUsernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: sender)
    }
}

