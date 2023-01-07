//
//  CardSelectionViewController.swift
//  WorkoutCardProgrammaticUI
//
//  Created by Mahmut Senbek on 7.01.2023.
//

import UIKit

class CardSelectionViewController: UIViewController {
    
    let cardImageView     = UIImageView()
    let stopButton        = CWButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton       = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton       = CWButton(backgroundColor: .systemBlue, title: "Rules")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
    }
    
    func configureUI() {
        
    }
 
    func configureCardImageView() {
        
    }

}
