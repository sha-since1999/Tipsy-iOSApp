//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Rohit sahu on 22/07/20.

//

import UIKit

class ResultViewController: UIViewController {
    var result: Result?
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text =  "split between \(String(describing: result!.people)) people with, \(String(describing: result!.tips)) percent tips"
        resultLabel.text = String(format : "%.1f",result!.result )
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
