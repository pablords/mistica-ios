//
//  SpacerView.swift
//  Mistica
//
//  Created on 24/07/2020.
//  Copyright © 2020 Jose Miguel Brocal. All rights reserved.
//

import UIKit

final class SpacerView: UIView {
    private let axis: NSLayoutConstraint.Axis
    private let amount: CGFloat

    init(axis: NSLayoutConstraint.Axis, amount: CGFloat) {
        self.axis = axis
        self.amount = amount

        super.init(frame: .zero)

        setContentHuggingPriority(.required, for: axis)
        setContentCompressionResistancePriority(.required, for: axis)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var intrinsicContentSize: CGSize {
        switch axis {
        case .horizontal:
            return CGSize(width: amount, height: UIView.noIntrinsicMetric)
        case .vertical:
            return CGSize(width: UIView.noIntrinsicMetric, height: amount)
		@unknown default:
            fatalError()
        }
    }
}
