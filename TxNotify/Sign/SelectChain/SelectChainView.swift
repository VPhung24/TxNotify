//
//  SelectChainView.swift
//  TxNotify
//
//  Created by Vivian Phung on 1/25/23.
//

import Foundation
import UIKit

class SelectChainView: UIView {

    let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.backgroundColor = .tertiarySystemBackground
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "chain")
        return tableView
    }()

    let connectButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Connect", for: .normal)
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.layer.cornerRadius = 8
        return button
    }()

    let openWallet: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open Wallet", for: .normal)
        button.backgroundColor = .systemFill
        button.tintColor = .white
        button.layer.cornerRadius = 8
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "chain_cell")
        backgroundColor = .systemBackground
        addSubview(tableView)
        addSubview(connectButton)
        addSubview(openWallet)

        subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),

            connectButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16),
            connectButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            connectButton.heightAnchor.constraint(equalToConstant: 44),
            connectButton.widthAnchor.constraint(equalToConstant: 120),

            openWallet.bottomAnchor.constraint(equalTo: connectButton.topAnchor, constant: -16),
            openWallet.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            openWallet.heightAnchor.constraint(equalToConstant: 44),
            openWallet.widthAnchor.constraint(equalToConstant: 120)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
