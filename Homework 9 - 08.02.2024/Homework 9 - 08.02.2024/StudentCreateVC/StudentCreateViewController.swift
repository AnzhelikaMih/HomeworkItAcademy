//
//  StudentCreateViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import UIKit

protocol StudentDelegate: AnyObject {
    func updateStudents()
}

final class StudentCreateViewController: UIViewController {
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var ageTextField: UITextField!
    @IBOutlet weak var chooseTeacherButton: UIButton!
    
    var student: StudentViewModel?
    var teacher: TeacherViewModel?
   
    weak var delegate: StudentDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseTeacherButton.layer.borderWidth = 1
        chooseTeacherButton.layer.borderColor = UIColor.purple.cgColor
    }
    
    private func saveData() {
        guard let name = nameTextField.text, !name.isEmpty,
              let ageText = ageTextField.text, !ageText.isEmpty,
              let age = Int16(ageText),
              let teacherLastName = chooseTeacherButton.titleLabel?.text
        else { return }
        
    
        let student = StudentViewModel(name: name, age: age, teacherLastName: teacherLastName)
        print(student)
        CoreDataService.shared.saveStudent(with: student)
        
        delegate?.updateStudents()
    }
    
    @IBAction func chooseTeacherDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ChooseTeacherViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ChooseTeacherViewController") as? ChooseTeacherViewController {
            vc.teacherSelectionHandler = { selectedTeacher in
            self.chooseTeacherButton.setTitle("Selected: \(selectedTeacher.firstName) \(selectedTeacher.lastName)", for: .normal)
            self.student?.teacherLastName = "\(selectedTeacher.firstName) \(selectedTeacher.lastName)"
            }
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        saveData()
    
        navigationController?.popViewController(animated: true)
    }
    

}

