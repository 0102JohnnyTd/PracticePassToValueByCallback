//
//  NextViewController.swift
//  PracticePassToValueByCallback
//
//  Created by Johnny Toda on 2022/05/30.
//

import UIKit

class NextViewController: UIViewController {
    private let countManager = CountManager()
    var completion: ((CountManager) -> Void)?

    @IBOutlet weak var countLabel: UILabel!

    @IBAction func countPlus(_ sender: Any) {
        countManager.increment()
            countLabel.text = countManager.count.description
    }

    @IBAction func closeVC(_ sender: Any) {
        completion?(countManager)
        dismiss(animated: true, completion: nil)
    }
}
