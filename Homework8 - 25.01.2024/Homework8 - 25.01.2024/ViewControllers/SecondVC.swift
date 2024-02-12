//
//  SecondVC.swift
//  Homework8 - 25.01.2024
//
//  Created by Анжелика on 18.01.24.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var lastNameTextField: UITextField!

    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var saveButton: UIButton!
    
    weak var delegate: AddPersonDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        lastNameTextField.delegate = self
        setupButtonsUI()
    }
    
    private func setupButtonsUI(){
        cancelButton.layer.cornerRadius = 10
        cancelButton.layer.borderWidth = 1
        cancelButton.layer.borderColor = UIColor.blue.cgColor
        cancelButton.tintColor = .blue

        saveButton.layer.cornerRadius = 10
        saveButton.backgroundColor = .blue
        saveButton.tintColor = .white
    }
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        guard let name = nameTextField.text, let lastName = lastNameTextField.text, !name.isEmpty, !lastName.isEmpty else { return }
        let newPerson = Person(name: name, lastName: lastName)
        delegate?.configure(person: newPerson)
        dismiss(animated: true)
    }
}

extension SecondVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            lastNameTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
    }
}

protocol AddPersonDelegate: AnyObject {
    func configure(person: Person)
}
