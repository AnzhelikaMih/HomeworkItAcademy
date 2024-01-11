//
//  FourthFemaleVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 8.01.24.
//

import UIKit

class FourthFemaleVC: UIViewController {
    var selectedName: String?
    
    @IBOutlet private weak var foxButton: UIButton!
    @IBOutlet private weak var mirrorButton: UIButton!
    @IBOutlet private weak var queenButton: UIButton!
    @IBOutlet private weak var candyButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    @IBAction private func anyButtonDidTap(_ sender: UIButton) {
        guard let fifthVC = storyboard?.instantiateViewController(withIdentifier: "FifthVC") as? FifthVC else { return }
        switch sender {
        case foxButton:
            selectedName = "Fox"
        case mirrorButton:
            selectedName = "Mirror"
        case queenButton:
            selectedName = "Queen"
        case candyButton:
            selectedName = "Candy"
        default:
            break
        }
        delegate?.didSelectName(name: selectedName ?? "")
        fifthVC.delegate = delegate
        navigationController?.pushViewController(fifthVC, animated: true)
        }
    
    func setupButtonAppearance(_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1
    }
    
    func setupButtons() {
        setupButtonAppearance(foxButton)
        setupButtonAppearance(mirrorButton)
        setupButtonAppearance(queenButton)
        setupButtonAppearance(candyButton)
    }
}
