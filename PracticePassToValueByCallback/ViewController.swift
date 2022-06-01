//
//  ViewController.swift
//  PracticePassToValueByCallback
//
//  Created by Johnny Toda on 2022/05/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!

    @IBAction func showNextVC(_ sender: Any) {
        let nextVC = NextViewController()
        saveCountData(nextVC: nextVC)
        self.present(nextVC, animated: true, completion: nil)
    }

    private func saveCountData(nextVC: NextViewController) {
        nextVC.completion = { countManager in
            self.countLabel.text = countManager.count.description
        }
    }
}

