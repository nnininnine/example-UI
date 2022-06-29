//
//  LottieViewModel.swift
//  example-UI
//
//  Created by Nuttapon Buaban on 29/6/2565 BE.
//

import Foundation
import RxSwift

class LottieViewModel {
    // MARK: Properties

    var isPlayingObservable: PublishSubject<Bool> = .init()
    let disposeBag: DisposeBag = .init()

    // MARK: Init

    init() {}

    // MARK: Methods
}
