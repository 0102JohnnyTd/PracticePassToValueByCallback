//
//  ViewController.swift
//  PracticePassToValueByCallback
//
//  Created by Johnny Toda on 2022/05/30.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var countLabel: UILabel!

    @IBAction private func showNextVC(_ sender: Any) {
        let nextVC = NextViewController()
        saveCountData(nextVC: nextVC)
        self.present(nextVC, animated: true, completion: nil)
    }

    private func saveCountData(nextVC: NextViewController) {
        nextVC.completion = {
            self.countLabel.text = $0.count.description
        }
    }
}
