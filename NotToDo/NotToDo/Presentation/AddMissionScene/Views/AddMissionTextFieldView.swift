//
//  AddMissionTextFieldView.swift
//  NotToDo
//
//  Created by 김민서 on 2023/01/05.
//

import UIKit

import SnapKit
import Then

final class AddMissionTextFieldView: UIView {
    
    // MARK: - UI Components
    
    private let AddMissionTextField = UITextField()
    
    // MARK: - View Life Cycles
    
    init(frame: CGRect, placeHolder: String) {
        super.init(frame: frame)
        setUI(placeHolder: placeHolder)
        setLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Methods

extension AddMissionTextFieldView {
    private func setUI(placeHolder: String) {
        AddMissionTextField.do {
            $0.backgroundColor = .nottodoWhite
            $0.layer.borderWidth = 1.adjusted
            $0.layer.borderColor = UIColor.nottodoGray4?.cgColor
            $0.font = .PretendardMedium(size: 16)
            $0.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.adjusted, height: 0.0))
            $0.leftViewMode = .always
            $0.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.nottodoGray3!])
        }
    }
    
    private func setLayout() {
        addSubview(AddMissionTextField)
        
        AddMissionTextField.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(46.adjusted)
        }
    }
}
