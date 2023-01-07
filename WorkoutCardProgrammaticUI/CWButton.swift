//
//  CWButton.swift
//  WorkoutCardProgrammaticUI
//
//  Created by Mahmut Senbek on 7.01.2023.
//

import UIKit

class CWButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor : UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: UIControl.State.normal)
    }
    
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19,weight: UIFont.Weight.bold)
        setTitleColor(.white, for: UIControl.State.normal)
        translatesAutoresizingMaskIntoConstraints = false // use autolayout
        
    }

}
