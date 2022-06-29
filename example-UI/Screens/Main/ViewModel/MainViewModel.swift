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

    let modules: Observable<[String]> = .of(["eiei", "eiei2"])
    let disposeBag: DisposeBag = .init()

    // MARK: Init

    init() {}

    // MARK: Methods
}
