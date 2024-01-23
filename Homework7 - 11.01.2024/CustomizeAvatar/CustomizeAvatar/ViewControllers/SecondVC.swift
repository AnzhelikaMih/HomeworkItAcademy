//
//  SecondVC.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 6.01.24.
//

import UIKit

struct MyData {
    var name: String?
    var avatar: UIImage? = nil
    var label: String?
}

class SecondVC: UIViewController {
    
    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var avatarLabel: UILabel!
    @IBOutlet private weak var saveButton: UIButton!
    @IBOutlet private weak var editButton: UIButton!
    @IBOutlet private weak var cancelButton: UIButton!
    
    weak var delegate: AvatarDelegate?
    
    var data: MyData = MyData(name: "No name", avatar: UIImage (systemName: ""), label: "No avatar")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAvatarImage()
        setupSaveAndEditButtons()
        updateUI()
    }
    
    private func setupSaveAndEditButtons() {
        saveButton.layer.cornerRadius = 10
        editButton.layer.borderColor = UIColor.purple.cgColor
        editButton.layer.borderWidth = 1
        editButton.layer.cornerRadius = 10
    }
    
    private func setupAvatarImage() {
        avatarImage.layer.borderColor = UIColor.purple.cgColor
        avatarImage.layer.borderWidth = 1
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2
    }
    
    private func updateUI() {
        nameLabel.text = data.name
        avatarImage.image = data.avatar
        avatarLabel.text = data.label
    }
    
    private func save(data: MyData) {
        delegate?.didSelectAvatarAndName(data: data)
    }
    
    @IBAction private func editButtonDidTap(_ sender: Any) {
        if let thirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC {
            thirdVC.delegate = self.delegate
            self.navigationController?.pushViewController(thirdVC, animated: true)}
    }
    
    @IBAction private func cancelButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction private func saveButtonDidTap(_ sender: Any) {
        save(data: data)
        dismiss(animated: true, completion: nil)
    }
}
    

    

