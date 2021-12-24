//
//  ViewController.swift
//  MadLibs
//
//  Created by admin on 24/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullStatmentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
        
        if let secondPage = unwindSegue.source as? InfoViewController{
            if let ad = secondPage.adTextField.text,
               let verbOne = secondPage.verbOneTF.text,
               let verbTwo = secondPage.verbTwoTF.text,
               let noun = secondPage.nounTF.text {
                fullStatmentLabel.text = "We are having a perfcectly \(ad) time now. Later we will \(verbOne) and  \(verbTwo) in the \(noun)."
            }
        }
        
        
    }


}

