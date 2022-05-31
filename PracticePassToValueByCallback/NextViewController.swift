//
//  NextViewController.swift
//  PracticePassToValueByCallback
//
//  Created by Johnny Toda on 2022/05/30.
//

import UIKit

class NextViewController: UIViewController {
    private let countManager = CountManager()
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func didTapButton(_ sender: Any) {
        countManager.increment()
        countLabel.text = countManager.count.description
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
