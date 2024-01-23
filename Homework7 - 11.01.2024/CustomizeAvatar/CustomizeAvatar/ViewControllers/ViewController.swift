//
//  ViewController.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 5.01.24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var avatarLabel: UILabel!
    @IBOutlet private weak var customizeButton: UIButton!

    var data: MyData = MyData(name: "No name", avatar: UIImage (systemName: ""), label: "No avatar")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomizeButton()
        setupAvatarImage()
        updateUI()
    }
    
    private func setupCustomizeButton(){
        customizeButton.layer.borderColor = UIColor.purple.cgColor
        customizeButton.layer.borderWidth = 1
        customizeButton.layer.cornerRadius = 10
    }
    
    private func setupAvatarImage(){
        avatarImage.layer.borderColor = UIColor.purple.cgColor
        avatarImage.layer.borderWidth = 1
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2
    }
    private func updateUI() {
        nameLabel.text = data.name
        avatarImage.image = data.avatar
        avatarLabel.text = data.label
    }
    
    @IBAction private func customizeButtonDidTap(_ sender: Any) {
        if let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            let navigationController = UINavigationController(rootViewController: secondVC)
            secondVC.delegate = self
            present(navigationController, animated: true, completion: nil) }
    }
}

extension ViewController: AvatarDelegate {
    func didSelectAvatarAndName(data: MyData) {
        avatarLabel.text = data.label
        nameLabel.text = data.name
        avatarImage.image = data.avatar
    }
}

protocol AvatarDelegate: AnyObject {
    func didSelectAvatarAndName (data: MyData)
}
