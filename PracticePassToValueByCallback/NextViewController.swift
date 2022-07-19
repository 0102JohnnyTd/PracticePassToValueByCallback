//
//  NextViewController.swift
//  PracticePassToValueByCallback
//
//  Created by Johnny Toda on 2022/05/30.
//

import UIKit

final class NextViewController: UIViewController {
    private let countManager = CountManager()
    var completion: ((CountManager) -> Void)?

    @IBOutlet private weak var countLabel: UILabel!

    @IBAction private func countPlus(_ sender: Any) {
        countManager.increment()
            countLabel.text = countManager.count.description
    }

    @IBAction private func closeVC(_ sender: Any) {
        completion?(countManager)
        dismiss(animated: true, completion: nil)
    }
}
