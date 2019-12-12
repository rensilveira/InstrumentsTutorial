//
//  SecondViewController.swift
//  InstrumentsTutorial
//
//  Created by Renan Silveira on 12/12/19.
//  Copyright © 2019 Renan Silveira. All rights reserved.
//

import UIKit

// MARK: - Delegates

protocol SecondViewControllerDelegate: AnyObject {
    func didTapButton()
}

class SecondViewController: UIViewController {

    // MARK: - Properties

    var delegate: SecondViewControllerDelegate?

    // MARK: - IBActions

    @IBAction private func buttonAction(_ sender: UIButton) {
        delegate?.didTapButton()
    }

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
