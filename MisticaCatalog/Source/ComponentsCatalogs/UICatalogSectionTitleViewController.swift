//
//  UICatalogSectionTitleViewController.swift
//  AppCoreKit
//
//  Created by Jose Miguel Brocal on 11/06/2020.
//  Copyright © 2020 Tuenti Technologies S.L. All rights reserved.
//

import Mistica
import UIKit

private enum Constants {
    static let listCellReusableIdentifier = "listCellReusableIdentifier"
    static let sectionTitleReusableIdentifier = "sectionTitleReusableIdentifier"
}

class UICatalogSectionTitleViewController: UITableViewController {
    init() {
        super.init(style: .grouped)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Section Title"
        tableView.separatorStyle = .none
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.sectionFooterHeight = 0.0

        tableView.register(ListCellView.self, forCellReuseIdentifier: Constants.listCellReusableIdentifier)
        tableView.register(SectionTitleHeaderView.self, forHeaderFooterViewReuseIdentifier: Constants.sectionTitleReusableIdentifier)
    }

    override func numberOfSections(in _: UITableView) -> Int {
        3
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.listCellReusableIdentifier, for: indexPath) as! ListCellView

        cell.title = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        cell.detailText = "Pellentesque mattis risus arcu, porttitor convallis lacus volutpat quis."
        cell.isCellSeparatorHidden = indexPath.section == 2 && indexPath.row == 1

        return cell
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: Constants.sectionTitleReusableIdentifier) as! SectionTitleHeaderView
        headerView.title = "Section Title \(section)"

        return headerView
    }
}
