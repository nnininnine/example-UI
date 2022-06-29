//
//  MainViewModel.swift
//  example-UI
//
//  Created by Nuttapon Buaban on 29/6/2565 BE.
//

import Foundation
import RxSwift

class MainViewModel {
    // MARK: Properties

    let modules: Observable<Modules> = .of([
        Module(
            name: "Lottie example",
            identifier: "LottieViewController",
            storyboardIdentifier: "Main"
        ),
    ])
    let disposeBag: DisposeBag = .init()

    // MARK: Init

    init() {}

    // MARK: Methods
}
