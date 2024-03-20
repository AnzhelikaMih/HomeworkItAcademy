//
//  TeacherTableViewCell.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 9.02.24.
//

import UIKit

final class TeacherTableViewCell: UITableViewCell {
    
    private var teacher: TeacherViewModel?

    func configureTeacherCell (with teacher: TeacherViewModel) {
        
        textLabel?.font = .systemFont(ofSize: 20)
        
        let attrString = NSMutableAttributedString(string: "\(teacher.firstName) \(teacher.lastName)")
        let nameRange = NSRange(location: 0, length: teacher.firstName.count)
            attrString.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .bold), range: nameRange)
        
        textLabel?.attributedText = attrString
    }
}
