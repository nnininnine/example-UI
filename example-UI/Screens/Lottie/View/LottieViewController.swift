//
//  LottieViewController.swift
//  example-UI
//
//  Created by Nuttapon Buaban on 29/6/2565 BE.
//

import Foundation
import Lottie
import RxCocoa
import RxSwift
import UIKit

class LottieViewController: UIViewController {
    // MARK: Outlets

    @IBOutlet private var animationView: AnimationView!
    @IBOutlet private var toggleButton: UIButton!

    // MARK: Properties

    lazy var viewModel: LottieViewModel = .init()

    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    // MARK: Methods

    func setup() {
        setupAnimation()

        setupRx()
    }

    func setupAnimation() {
        // 1. Set animation content mode
        animationView.contentMode = .scaleAspectFit

        // 2. Set animation loop mode
        animationView.loopMode = .loop

        // 3. Adjust animation speed
        animationView.animationSpeed = 0.7
    }

    func setupRx() {
        // subscribe
        viewModel.isPlayingObservable.asObservable().subscribe(onNext: { [weak self] (playing: Bool) in
            guard let self = self else { return }
            switch playing {
            case true:
                self.animationView.play()
                self.toggleButton.setTitle("Stop", for: .normal)
            case false:
                self.animationView.pause()
                self.toggleButton.setTitle("Start", for: .normal)
            }
        }).disposed(by: viewModel.disposeBag)

        // on tap button
        toggleButton.rx.tap.asObservable().subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.viewModel.isPlayingObservable.onNext(!self.animationView.isAnimationPlaying)
        }).disposed(by: viewModel.disposeBag)
    }
}
