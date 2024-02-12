//
//  StudentTableViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import UIKit

final class StudentTableViewController: UIViewController {
    
    @IBOutlet private weak var studentsTableView: UITableView!
    
    private var students = [StudentViewModel]() {
        didSet {
            studentsTableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    private func fetchData() {
        students = CoreDataService.shared.fetchStudents()
    }

    @IBAction private func addButtonDidTap() {
        let storyboard = UIStoryboard(name: "StudentCreateViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "StudentCreateViewController") as? StudentCreateViewController {
            vc.delegate = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension StudentTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let student = students[indexPath.row]
        let cell = StudentTableViewCell()
        cell.configureStudentCell(with: student)
        return cell
    }
}

extension StudentTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let student = students[indexPath.row]
        let storyboard = UIStoryboard(name: "StudentDetailsViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "StudentDetailsViewController") as? StudentDetailsViewController {
            
            vc.loadView()
            vc.configureStudentDetails(with: student)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension StudentTableViewController: StudentDelegate {
    func updateStudents() {
        fetchData()
    }
}
