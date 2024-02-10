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
        let cell = TeacherTableViewCell()
        cell.configureTeacherCell(with: teacher)
        return cell
    }
}

extension TeacherTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let teacher = teachers[indexPath.row]
        let storyboard = UIStoryboard(name: "TeacherDetailsViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: "TeacherDetailsViewController") as? TeacherDetailsViewController {
            
            vc.loadView()
            vc.getStudentsForTeacher(with: teacher)
            vc.configureTeacherDetails(with: teacher)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension TeacherTableViewController: TeacherDelegate {
    func updateTeachers() {
        fetchData()
    }
}
