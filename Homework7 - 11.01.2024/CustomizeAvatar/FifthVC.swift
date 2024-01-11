//
//  FifthVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 8.01.24.
//

import UIKit

class FifthVC: UIViewController {

    @IBOutlet private weak var catButton: UIButton!
    @IBOutlet private weak var glassesButton: UIButton!
    @IBOutlet private weak var melomanButton: UIButton!
    @IBOutlet private weak var coolmanButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func catButtonDidTap(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        if let image = UIImage(named: "Cat") {
            delegate?.didSelectAvatar(selectedImage: image)}
        guard let fourthMaleVC = storyboard?.instantiateViewController(withIdentifier: "FourthMaleVC") as? FourthMaleVC else { return }
        if let name = fourthMaleVC.selectedName {
            delegate?.didSelectName(name: name)}
        guard let fourthFemaleVC = storyboard?.instantiateViewController(withIdentifier: "FourthFemaleVC") as? FourthFemaleVC else { return }
        if let name = fourthFemaleVC.selectedName {
            delegate?.didSelectName(name: name)}
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction private func glassesButtonDidTap(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        if let image = UIImage(named: "Glasses") {
            delegate?.didSelectAvatar(selectedImage: image)}
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction private func melomanButtonDidTap(_ sender: Any) {
        if let image = UIImage(named: "Meloman") {
            delegate?.didSelectAvatar(selectedImage: image)}
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction private func coolmanButtonDidTap(_ sender: Any) {
        if let image = UIImage(named: "Coolman") {
            delegate?.didSelectAvatar(selectedImage: image)}
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
}
