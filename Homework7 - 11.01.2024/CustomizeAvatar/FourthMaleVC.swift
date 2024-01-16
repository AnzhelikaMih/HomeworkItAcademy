//
//  FourthMaleVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 8.01.24.
//

import UIKit

class FourthMaleVC: UIViewController {
    
    @IBOutlet private weak var frogButton: UIButton!
    @IBOutlet private weak var hammerButton: UIButton!
    @IBOutlet private weak var kingButton: UIButton!
    @IBOutlet private weak var gunButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    var selectedName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    @IBAction private func anyButtonDidTap(_ sender: UIButton) {
        switch sender {
        case frogButton:
            selectedName = "Frog"
            break
        case hammerButton:
            selectedName = "Hammer"
            break
        case kingButton:
            selectedName = "King"
            break
        case gunButton:
            selectedName = "Gun"
        default:
            break
        }
        if let fifthVC = self.storyboard?.instantiateViewController(withIdentifier: "FifthVC") as? FifthVC {
            fifthVC.delegate = delegate
            fifthVC.data.name = selectedName
            self.navigationController?.pushViewController(fifthVC, animated: true)
        }
    }
    
    func setupButtonAppearance(_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
    }
    
    func setupButtons() {
        setupButtonAppearance(frogButton)
        setupButtonAppearance(hammerButton)
        setupButtonAppearance(kingButton)
        setupButtonAppearance(gunButton)
    }
}
