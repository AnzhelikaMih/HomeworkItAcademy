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
    
    private var student: StudentViewModel?
    private var selectedTeacher: TeacherViewModel?
   
    weak var delegate: StudentDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseTeacherButtonUI ()
    }
    
    private func chooseTeacherButtonUI () {
        chooseTeacherButton.layer.borderWidth = 1
        chooseTeacherButton.layer.borderColor = UIColor.purple.cgColor
    }
    
    private func saveData() {
        guard let name = nameTextField.text, !name.isEmpty,
              let ageText = ageTextField.text, !ageText.isEmpty,
              let age = Int16(ageText),
              let selectedTeacher = selectedTeacher
        else { return }
        
        let student = StudentViewModel(name: name, age: age, teacher: selectedTeacher)
        
        CoreDataService.shared.saveStudent(with: student)
        
        delegate?.updateStudents()
    }
    
    @IBAction func chooseTeacherDidTap(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "ChooseTeacherViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ChooseTeacherViewController") as? ChooseTeacherViewController {
            
            vc.teacherSelectionHandler = { selectedTeacher in
                self.selectedTeacher = selectedTeacher
                self.chooseTeacherButton.setTitle("Selected: \(selectedTeacher.firstName) \(selectedTeacher.lastName)", for: .normal)
            }
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        
        saveData()
        navigationController?.popViewController(animated: true)
    }
}

