//
//  StudentDetailsViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 7.02.24.
//

import UIKit

final class StudentDetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var teacherLabel: UILabel!
    
    var student: StudentViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = ""
        ageLabel.text = ""
        teacherLabel.text = ""
    }
    
    func configureStudentDetails (with student: StudentViewModel) {
        
        let attrStrName = NSMutableAttributedString(string: "Name: \(student.name)")
        let nameRange = NSRange(location: 0, length: String("Name:").count)
        attrStrName.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .regular), range: nameRange)
        
        let attrStrAge = NSMutableAttributedString(string: "Age: \(student.age)")
        let ageRange = NSRange(location: 0, length: String("Age:").count)
        attrStrAge.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .regular), range: ageRange)
        
        let attrStrTeacher = NSMutableAttributedString(string: "Teacher: \(student.teacher.firstName) \(student.teacher.lastName)")
        let teacherRange = NSRange(location: 0, length: String("Teacher:").count)
        attrStrTeacher.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .regular), range: teacherRange)
        
        nameLabel.attributedText = attrStrName
        ageLabel.attributedText = attrStrAge
        teacherLabel.attributedText = attrStrTeacher
    }
}
