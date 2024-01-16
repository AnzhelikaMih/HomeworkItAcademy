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
    var data: MyData = MyData(name: "No name", avatar: UIImage (systemName: ""), label: "No avatar")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func anyButtonDidTap(_ sender: UIButton) {
        switch sender {
        case catButton:
            if let image = UIImage(named: "Cat") {
                data.avatar = image }
            break
        case glassesButton:
            if let image = UIImage(named: "Glasses") {
                data.avatar = image }
            break
        case melomanButton:
            if let image = UIImage(named: "Meloman") {
                data.avatar = image }
            break
        case coolmanButton:
            if let image = UIImage(named: "Coolman") {
                data.avatar = image }
        default:
            break
        }
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            secondVC.delegate = delegate
            data.label = ""
            secondVC.data = data
        self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}
