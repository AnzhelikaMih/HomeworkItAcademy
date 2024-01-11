//
//  ViewController.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 5.01.24.
//

import UIKit

protocol AvatarDelegate: AnyObject {
    func didSelectAvatar(selectedImage: UIImage)
    func didSelectName(name: String)
}

class ViewController: UIViewController {
    
    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var customizeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomizeButton()
        setupAvatarImage()
        nameLabel.text = "No name"
    }
    
    @IBAction private func customizeButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        navigationController?.pushViewController(secondVC, animated: true)
    }

    func setupCustomizeButton(){
        customizeButton.layer.borderColor = UIColor.purple.cgColor
        customizeButton.layer.borderWidth = 1
        customizeButton.layer.cornerRadius = 10
    }
    
    func setupAvatarImage(){
        avatarImage.layer.borderColor = UIColor.purple.cgColor
        avatarImage.layer.borderWidth = 1
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2
    }
}

extension ViewController: AvatarDelegate {
    func didSelectAvatar(selectedImage: UIImage) {
        print("Selected avatar image")
        avatarImage.image = selectedImage
    }
    
    func didSelectName(name: String) {
        print("Selected name")
        nameLabel.text = name
    }
}
