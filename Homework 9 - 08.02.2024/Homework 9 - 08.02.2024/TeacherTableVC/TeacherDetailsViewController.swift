//
//  TeacherDetailsViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 9.02.24.
//

import UIKit

final class TeacherDetailsViewController: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var lastNameLabel: UILabel!
    @IBOutlet private weak var studentsTableView: UITableView!
    
    private var students = [StudentViewModel]() {
        didSet {
            studentsTableView.reloadData()
        }
    }
    
    var studentsForTeacher = [StudentViewModel]()
    
    var teacher: TeacherViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = ""
        lastNameLabel.text = ""
    }
    
    func getStudentsForTeacher(with teacher: TeacherViewModel) {
        students = CoreDataService.shared.fetchStudents()
        studentsForTeacher = students.filter { $0.teacher == teacher }
    }
    
    func configureTeacherDetails (with teacher: TeacherViewModel) {
        
        let attrStrName = NSMutableAttributedString(string: "Name: \(teacher.firstName)")
        let nameRange = NSRange(location: 0, length: String("Name:").count)
        attrStrName.addAttribute(.font, value: UIFont.systemFont(ofSize: 25, weight: .regular), range: nameRange)
        
        let attrStrLastName = NSMutableAttributedString(string: "Lastname: \(teacher.lastName)")
        let lastNameRange = NSRange(location: 0, length: String("Lastname:").count)
        attrStrLastName.addAttribute(.font, value: UIFont.systemFont(ofSize: 25, weight: .regular), range: lastNameRange)
        
        nameLabel.attributedText = attrStrName
        lastNameLabel.attributedText = attrStrLastName
    }

}

extension TeacherDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsForTeacher.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let student = studentsForTeacher[indexPath.row]
        let cell = StudentTableViewCell()
        cell.configureStudentCell(with: student)
        return cell
    }
}
