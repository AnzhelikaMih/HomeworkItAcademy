//
//  FourthGenderVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 8.01.24.
//

import UIKit

class FourthGenderVC: UIViewController {
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    var selectedName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupButtonAppearance(_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
    }
    
    func setupButtons() {
        setupButtonAppearance(firstButton)
        setupButtonAppearance(secondButton)
        setupButtonAppearance(thirdButton)
        setupButtonAppearance(fourthButton)
    }
    
    @IBAction private func anyButtonDidTap(_ button: UIButton) {
        selectedName = button.titleLabel?.text
        if let fifthVC = self.storyboard?.instantiateViewController(withIdentifier: "FifthVC") as? FifthVC {
            fifthVC.delegate = delegate
            fifthVC.data.name = selectedName
            self.navigationController?.pushViewController(fifthVC, animated: true)
        }
    }
}
