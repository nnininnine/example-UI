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

        setup()
    }

    // MARK: Methods

    func setup() {
        // binding
        bindingTableView()
    }

    func bindingTableView() {
        tableView.delegate = nil
        tableView.dataSource = nil

        viewModel.modules.bind(to: tableView.rx.items) { (_: UITableView, _: Int, module: Module) in
            let cell = TableViewCell(style: .default, reuseIdentifier: "cell")
            cell.textLabel?.text = module.name
            return cell
        }.disposed(by: viewModel.disposeBag)
    }
}

private class TableViewCell: UITableViewCell {
    override func setSelected(_ selected: Bool, animated: Bool) {}
}
