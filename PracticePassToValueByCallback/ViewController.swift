//
//  ViewController.swift
//  PracticePassToValueByCallback
//
//  Created by Johnny Toda on 2022/05/30.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapButton(_ sender: Any) {
        showNextVC()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func showNextVC() {
        let nextVC = NextViewController()
        self.present(nextVC, animated: true, completion: nil)
    }
}

