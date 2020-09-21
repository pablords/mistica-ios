//
//  UITextFieldTableViewCell.swift
//  CommonUIKit
//
//  Created by Pablo Carcelén on 26/11/2019.
//  Copyright © 2019 Tuenti Technologies S.L. All rights reserved.
//

import Mistica
import UIKit

public class UITextFieldTableViewCell: UITableViewCell {
    public lazy var textField = UITextField()

    public init(reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setUp()
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUp() {
        selectionStyle = .none
        textField.clearButtonMode = .whileEditing
        textField.font = .textPreset6(weight: .regular)

        contentView.addSubview(constrainedToLayoutMarginsGuideOf: textField)
    }
}
