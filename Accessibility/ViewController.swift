//
//  ViewController.swift
//  Accessibility
//
//  Created by Vinicius Cano Santos on 21/10/19.
//  Copyright © 2019 Vinicius Cano Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameStackView: UIStackView!
    @IBOutlet weak var cardStackView: UIStackView!
    @IBOutlet weak var payButton: UIButton!
    
    @IBAction func payAction(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            UIAccessibility.post(notification: .announcement, argument: "Sua fatura foi paga")
        }
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupAccessibility()
        }
        
        private func setupAccessibility() {
            titleLabel.isAccessibilityElement = true
            titleLabel.accessibilityLabel = "Cliente"
            titleLabel.accessibilityTraits = .header
            
            nameStackView.isAccessibilityElement = true
            nameStackView.accessibilityLabel = "Nome: Vinícius Cano"
            nameStackView.accessibilityTraits = .staticText
            
            cardStackView.isAccessibilityElement = true
            cardStackView.accessibilityLabel = "Cartão: final 7890"
            cardStackView.accessibilityTraits = .staticText
            
            payButton.isAccessibilityElement = true
            payButton.accessibilityLabel = "Pagar fatura"
            payButton.accessibilityTraits = .button
            payButton.accessibilityHint = "Dê dois toques para pagar sua fatura"
        }
}
