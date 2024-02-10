//
//  StudentTableViewCell.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 9.02.24.
//

import UIKit

final class StudentTableViewCell: UITableViewCell {
    
    private var student: StudentViewModel?
    
    func configureStudentCell(with student: StudentViewModel) {
        
        textLabel?.font = .systemFont(ofSize: 20)
        
        let attrString = NSMutableAttributedString(string: "\(student.name) \(student.age)")
        let nameRange = NSRange(location: 0, length: student.name.count)
        attrString.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .bold), range: nameRange)
        
        textLabel?.attributedText = attrString
    }
}
