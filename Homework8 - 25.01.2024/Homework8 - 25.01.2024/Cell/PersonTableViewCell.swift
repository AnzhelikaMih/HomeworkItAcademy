//
//  PersonTableViewCell.swift
//  Homework8 - 25.01.2024
//
//  Created by Анжелика on 18.01.24.
//

import UIKit

final class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var lastNameLabel: UILabel!
    
    private var person: Person?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure (with person: Person) {
        nameLabel.text = person.name
        lastNameLabel.text = person.lastName
    }
}
    

