//
//  ViewController.swift
//  InstrumentsTutorial
//
//  Created by Renan Silveira on 12/12/19.
//  Copyright © 2019 Renan Silveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var buttonTappedStatusLabel: UILabel!

    // MARK: - IBActions

    @IBAction private func openSecondScreen(_ sender: UIButton) {
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }

        secondViewController.delegate = self
        navigationController?.pushViewController(secondViewController, animated: true)
    }

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - SecondViewControllerDelegate

extension ViewController: SecondViewControllerDelegate {

    func didTapButton() {
        buttonTappedStatusLabel.text = "Button tapped"
    }
}
