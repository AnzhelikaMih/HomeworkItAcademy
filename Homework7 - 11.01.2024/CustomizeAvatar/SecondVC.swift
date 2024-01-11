//
//  SecondVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 6.01.24.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var saveButton: UIButton!
    @IBOutlet private weak var editButton: UIButton!
    @IBOutlet private weak var cancelButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAvatarImage()
        setupSaveAndEditButtons()
        nameLabel.text = "No name"
    }
    
    @IBAction private func editButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC else { return }
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    @IBAction private func cancelButtonDidTap(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction private func saveButtonDidTap(_ sender: Any) {
        guard let name = nameLabel.text else { return }
        nameLabel.text = name
        guard let selectedImage = avatarImage.image else { return }
        avatarImage.image = selectedImage
        delegate?.didSelectName(name: name)
        delegate?.didSelectAvatar(selectedImage: selectedImage)
        navigationController?.popToRootViewController(animated: true)
    }
    
    func setupSaveAndEditButtons() {
        saveButton.layer.cornerRadius = 10
        editButton.layer.borderColor = UIColor.purple.cgColor
        editButton.layer.borderWidth = 1
        editButton.layer.cornerRadius = 10
    }
    
    func setupAvatarImage() {
        avatarImage.layer.borderColor = UIColor.purple.cgColor
        avatarImage.layer.borderWidth = 1
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2
    }
}
    

    

