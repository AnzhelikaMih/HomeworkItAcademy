//
//  TeacherCreateViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import UIKit

protocol TeacherDelegate: AnyObject {
    func updateTeachers()
}

final class TeacherCreateViewController: UIViewController {
    
    @IBOutlet private weak var firstNameTextField: UITextField!
    @IBOutlet private weak var lastNameTextField: UITextField!
    
    weak var delegate: TeacherDelegate?
    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        guard let firstName = firstNameTextField.text, firstNameTextField.text != nil,
              let lastName = lastNameTextField.text, lastNameTextField.text != nil else { return }
        
        let teacher = TeacherViewModel(firstName: firstName, lastName: lastName)
        
        CoreDataService.shared.saveTeacher(with: teacher)
        delegate?.updateTeachers()
        
        navigationController?.popViewController(animated: true)
    }
}

