//
//  DiaryFolderViewController.swift
//  example-UI
//
//  Created by Nuttapon Buaban on 29/6/2565 BE.
//

import Foundation
import UIKit

class DiaryFolderViewController: UIViewController {
    // MARK: Outlets

    @IBOutlet private var addButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setup()
    }

    func setupUI() {
        print("set back button")
        navigationItem.setHidesBackButton(true, animated: false)
        navigationController?.allowSwipeToPop(true)

        // setup add button
        addButton.tintColor = .init(hex: 0xCC4F4F)
    }

    func setup() {}
}
