//
//  RulesVCViewController.swift
//  WorkoutCardProgrammaticUI
//
//  Created by Mahmut Senbek on 8.01.2023.
//

import UIKit

class RulesVCViewController: UIViewController {

    let titleLabel    = UILabel()
    let rulesLabel    = UILabel()
    let exerciseLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()

        view.backgroundColor = .systemBackground
    }
    
    func configureUI() {
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30)
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-Ups\n\n♣️ = Sits-up\n\n♦️ = Burpess\n\n♥️ = Jumping Jacks"
        exerciseLabel.textAlignment = .left
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 200),
            exerciseLabel.leadingAnchor.constraint(equalTo: rulesLabel.leadingAnchor, constant: 10)
        ])
    }
    

  

}
