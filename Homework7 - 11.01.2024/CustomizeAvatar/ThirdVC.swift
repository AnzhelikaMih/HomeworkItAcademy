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
    
    weak var delegate: AvatarDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    @IBAction private func maleButtonDidTap(_ sender: Any) {
        if let fourthMaleVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthMaleVC") as? FourthMaleVC {
            fourthMaleVC.delegate = delegate
            self.navigationController?.pushViewController(fourthMaleVC, animated: true)
        }
    }
    
    @IBAction private func femaleButtonDidTap(_ sender: Any) {
        if let fourthFemaleVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthFemaleVC") as? FourthFemaleVC {
            fourthFemaleVC.delegate = delegate
            self.navigationController?.pushViewController(fourthFemaleVC, animated: true)
        }
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
