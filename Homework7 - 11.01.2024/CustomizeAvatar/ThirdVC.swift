//
//  ThirdVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 8.01.24.
//

import UIKit

class ThirdVC: UIViewController {
    @IBOutlet private weak var maleButton: UIButton!
    @IBOutlet private weak var femaleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    @IBAction private func maleButtonDidTap(_ sender: Any) {
        guard let fourthMaleVC = storyboard?.instantiateViewController(withIdentifier: "FourthMaleVC") as? FourthMaleVC else { return }
        navigationController?.pushViewController(fourthMaleVC, animated: true)
        }
    
    @IBAction private func femaleButtonDidTap(_ sender: Any) {
        guard let fourthVC = storyboard?.instantiateViewController(withIdentifier: "FourthFemaleVC") as? FourthFemaleVC else { return }
        navigationController?.pushViewController(fourthVC, animated: true)
        }
    
    func setupButtonAppearance(_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
    }
    
    func setupButtons() {
        setupButtonAppearance(maleButton)
        setupButtonAppearance(femaleButton)
    }
}
