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
    let names = ["Frog","Hammer","King","Gun","Fox","Mirror","Queen","Candy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    private func setupButtonAppearance(_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
    }
    
    private func setupButtons() {
        setupButtonAppearance(maleButton)
        setupButtonAppearance(femaleButton)
    }
    
    @IBAction private func maleButtonDidTap(_ sender: Any) {
        if let fourthGenderVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthGenderVC") as? FourthGenderVC {
            fourthGenderVC.delegate = delegate
            fourthGenderVC.loadView()
            fourthGenderVC.setupButtons()
            fourthGenderVC.firstButton.setTitle(names[0], for: .normal)
            fourthGenderVC.secondButton.setTitle(names[1], for: .normal)
            fourthGenderVC.thirdButton.setTitle(names[2], for: .normal)
            fourthGenderVC.fourthButton.setTitle(names[3], for: .normal)
            self.navigationController?.pushViewController(fourthGenderVC, animated: true)
        }
    }
    
    @IBAction private func femaleButtonDidTap(_ sender: Any) {
        if let fourthGenderVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthGenderVC") as? FourthGenderVC {
            fourthGenderVC.delegate = delegate
            fourthGenderVC.loadView()
            fourthGenderVC.setupButtons()
            fourthGenderVC.firstButton.setTitle(names[4], for: .normal)
            fourthGenderVC.secondButton.setTitle(names[5], for: .normal)
            fourthGenderVC.thirdButton.setTitle(names[6], for: .normal)
            fourthGenderVC.fourthButton.setTitle(names[7], for: .normal)
            self.navigationController?.pushViewController(fourthGenderVC, animated: true)
        }
    }
}
