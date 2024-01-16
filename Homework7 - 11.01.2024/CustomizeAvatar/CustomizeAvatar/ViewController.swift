//
//  ViewController.swift
//  CustomizeAvatar
//
//  Created by Анжелика on 5.01.24.
//

import UIKit

protocol AvatarDelegate: AnyObject {
    func didSelectAvatarAndName (data: MyData)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarLabel: UILabel!
    @IBOutlet private weak var customizeButton: UIButton!

    
    var data: MyData = MyData(name: "No name", avatar: UIImage (systemName: ""), label: "No avatar")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomizeButton()
        setupAvatarImage()
        updateUI()
    }
    
    @IBAction private func customizeButtonDidTap(_ sender: Any) {
        if let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            let navigationController = UINavigationController(rootViewController: secondVC)
            secondVC.delegate = self
            present(navigationController, animated: true, completion: nil) }
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
    func updateUI() {
        nameLabel.text = data.name
        avatarImage.image = data.avatar
        avatarLabel.text = data.label
    }
}

extension ViewController: AvatarDelegate {
    func didSelectAvatarAndName(data: MyData) {
        avatarLabel.text = data.label
        nameLabel.text = data.name
        avatarImage.image = data.avatar
    }
}

