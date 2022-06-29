//
//  LottieViewController.swift
//  example-UI
//
//  Created by Nuttapon Buaban on 29/6/2565 BE.
//

import Foundation
import Lottie
import UIKit

class LottieViewController: UIViewController {
    // MARK: Outlets

    @IBOutlet private var animationView: AnimationView!

    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    // MARK: Methods

    func setup() {
        // 1. Set animation content mode

        animationView.contentMode = .scaleAspectFit

        // 2. Set animation loop mode

        animationView.loopMode = .loop

        // 3. Adjust animation speed

        animationView.animationSpeed = 0.5

        // 4. Play animation
        animationView.play()
    }
}
