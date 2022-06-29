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
        Module(
            name: "Diary folder",
            identifier: "DiaryFolderViewController",
            storyboardIdentifier: "Main"
        )
    ])
    let disposeBag: DisposeBag = .init()

    // MARK: Init

    init() {}

    // MARK: Methods

    func routeToModule(_ vc: UIViewController, module: Module) {
        let storyboard = UIStoryboard(name: module.storyboardIdentifier, bundle: nil)
        let desVC = storyboard.instantiateViewController(identifier: module.identifier)

        vc.navigationController?.pushViewController(desVC, animated: true)
    }
}
