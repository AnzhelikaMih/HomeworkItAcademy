//
//  TeacherTableViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import UIKit

class TeacherTableViewController: UIViewController {

    @IBOutlet private weak var teachersTableView: UITableView!
    
    private var teachers = [TeacherViewModel]() {
        didSet {
            teachersTableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    private func fetchData() {
        teachers = CoreDataService.shared.fetchTeachers()
    }

    @IBAction private func addButtonDidTap() {
        let storyboard = UIStoryboard(name: "TeacherCreateViewController", bundle: nil)
        
        if let vc = storyboard.instantiateViewController(withIdentifier: "TeacherCreateViewController") as? TeacherCreateViewController {
            vc.delegate = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


extension TeacherTableViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teachers.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teacher = teachers[indexPath.row]
        let cell = UITableViewCell()
        
        /*
        let attrString = NSMutableAttributedString(string: "\(student.name) \(student.age)")
        
        let nameRange = NSRange(location: 0, length: student.name.count)
            attrString.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .bold), range: nameRange)

        let ageRange = NSRange(location: student.name.count + 1, length: Int(student.age))
            attrString.addAttribute(.font, value: UIFont.systemFont(ofSize: 20), range: ageRange)

            cell.textLabel?.attributedText = attrString
         */
        cell.textLabel?.text = "\(teacher.firstName) \(teacher.lastName)"
        return cell
    }
    
    
}

extension TeacherTableViewController: TeacherDelegate {
    func updateTeachers() {
        fetchData()
    }
}
