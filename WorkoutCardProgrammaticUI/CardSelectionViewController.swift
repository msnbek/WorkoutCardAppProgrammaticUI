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
    
    var timer = Timer()
    
    var cardArray = Images.imagesCard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        timeStarted()
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
 
    func configureCardImageView() {
        view.addSubview(cardImageView) // view a imageView ekledik.
        cardImageView.translatesAutoresizingMaskIntoConstraints = false // AutoLayout
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), // center
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -75) // centerden 75 birim yukarı kaldırdı.
        ])
        
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
     //  stopButton.translatesAutoresizingMaskIntoConstraints = false  yazmıyoruz çünkü. CWBUTTON swift doyasında yazmıştık zaten.
        stopButton.addTarget(self, action: #selector(stopButtonClicked), for: UIControl.Event.touchUpInside)
        NSLayoutConstraint.activate([
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
        
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetButtonClickec), for: UIControl.Event.touchUpInside)
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
  
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRules), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
        
    }
    
    @objc func presentRules() {
    
        
        let rulesVC = RulesVCViewController()
        // rulesVC.   Bu sekilde data aktarılabilir.
        present(rulesVC, animated: true)
        
    }
    
    @objc func stopButtonClicked() {
        timer.invalidate()
    }
    
    @objc func resetButtonClickec() {
        timer.invalidate()
        timeStarted()
    }
    
    func timeStarted() {
        timer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(timeStartedObjc), userInfo: nil, repeats: true)
        
    }
    @objc func timeStartedObjc() {
       let imgCard =  cardArray.randomElement()
        cardImageView.image = imgCard
    }

}
