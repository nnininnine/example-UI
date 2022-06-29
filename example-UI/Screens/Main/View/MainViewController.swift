//
//  MainViewController.swift
//  example-UI
//
//  Created by Nuttapon Buaban on 29/6/2565 BE.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

class MainViewController: UITableViewController {
    // MARK: Properties

    lazy var viewModel: MainViewModel = .init()

    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setup()
    }

    // MARK: Methods

    func setupUI() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    func setup() {
        // binding
        bindingTableView()
        onTapCell()
    }

    func bindingTableView() {
        tableView.delegate = nil
        tableView.dataSource = nil

        viewModel.modules.bind(to: tableView.rx.items) { (_: UITableView, _: Int, module: Module) in
            let cell = TableViewCell(style: .default, reuseIdentifier: "cell")
            cell.module = module
            cell.textLabel?.text = module.name
            return cell
        }.disposed(by: viewModel.disposeBag)
    }

    func onTapCell() {
        tableView.rx.modelSelected(Module.self).subscribe(onNext: { [weak self] (module: Module) in
            guard let self = self else { return }
            self.viewModel.routeToModule(self, module: module)
        }).disposed(by: viewModel.disposeBag)
    }
}

private class TableViewCell: UITableViewCell {
    var module: Module?

    override func setSelected(_ selected: Bool, animated: Bool) {}
}
