//
//  ChooseTeacherViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 7.02.24.
//

import UIKit

class ChooseTeacherViewController: UIViewController {

    @IBOutlet private weak var chooseTeacherTableView: UITableView!
    
    private var teachers = [TeacherViewModel]() {
        didSet {
            chooseTeacherTableView.reloadData()
        }
    }
    
    var teacherSelectionHandler: ((TeacherViewModel) -> Void)?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    private func fetchData() {
        teachers = CoreDataService.shared.fetchTeachers()
    }
}


extension ChooseTeacherViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teachers.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teacher = teachers[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(teacher.firstName) \(teacher.lastName)"
        return cell
    }
    
}

extension ChooseTeacherViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedTeacher = teachers[indexPath.row]
        teacherSelectionHandler?(selectedTeacher)
        
//        let storyboard = UIStoryboard(name: "StudentCreateViewController", bundle: nil)
//        if let vc = storyboard.instantiateViewController(withIdentifier: "StudentCreateViewController") as? StudentCreateViewController {
//
//            vc.teacher = selectedTeacher
            
        
        navigationController?.popViewController(animated: true)
    }
}

extension ChooseTeacherViewController: TeacherDelegate {
    func updateTeachers() {
        fetchData()
    }
}
