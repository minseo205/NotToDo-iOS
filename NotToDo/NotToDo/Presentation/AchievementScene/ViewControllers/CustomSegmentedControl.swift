//
//  CustomSegmentedControl.swift
//  NotToDo
//
//  Created by JEONGEUN KIM on 2023/01/04.
//

import UIKit

import SnapKit
import Then

class CustomSegmentedControl: UISegmentedControl {
    
    // MARK: - Life Cycle
    
    override init(items: [Any]?) {
        super.init(items: items)
        removeBackgroundDivider()
        setStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CustomSegmentedControl {
    
    // background color clear
    
    private func removeBackgroundDivider() {
        let image = UIImage()
        self.setBackgroundImage(image, for: .normal, barMetrics: .default)
        self.setBackgroundImage(image, for: .selected, barMetrics: .default)
        self.setBackgroundImage(image, for: .highlighted, barMetrics: .default)
        self.setDividerImage(image, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
    }
    
    // font color
    
    private func setStyle() {
        self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.nottodoGray2, .font: UIFont.PretendardRegular(size: 16)], for: .normal)
        self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.nottodoBlack, .font: UIFont.PretendardBold(size: 16), .backgroundColor: UIColor.yellow_deep], for: .selected)
        self.setContentPositionAdjustment(UIOffset(horizontal: -20, vertical: 0), forSegmentType: .center, barMetrics: .default)
    }
}
