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
    @IBAction func didTapButton(_ sender: Any) {
        countManager.increment()
        countLabel.text = countManager.count.description
    }
    @IBAction func didTapCloseButton(_ sender: Any) {
        closeVC()
    }

    private func closeVC() {
        completion?(countManager)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
