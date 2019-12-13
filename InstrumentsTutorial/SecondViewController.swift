//
//  SecondViewController.swift
//  InstrumentsTutorial
//
//  Created by Renan Silveira on 12/12/19.
//  Copyright © 2019 Renan Silveira. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Properties

    var firstViewController: ViewController?

    // MARK: - IBActions

    @IBAction private func buttonAction(_ sender: UIButton) {
        firstViewController?.childViewController = self
        firstViewController?.didTapButton()
    }

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
