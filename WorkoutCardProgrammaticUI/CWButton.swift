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
 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color : UIColor, title: String, systemImgName: String) {
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        
        configuration?.image = UIImage(systemName: systemImgName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .leading
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
   

}
