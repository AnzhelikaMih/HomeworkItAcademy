//
//  ViewController.swift
//  Homework8 - 25.01.2024
//
//  Created by Анжелика on 18.01.24.
//

import UIKit

struct Person {
    var name: String
    var lastName: String
}

final class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var persons: [Person] = []
    var isEditingMode = false
    var groupedContacts: [String: [Person]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupEditButtonItem()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PersonTableViewCell", bundle: nil), forCellReuseIdentifier: "PersonTableViewCell")
    }
    
    private func setupEditButtonItem() {
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    @IBAction func addButtonDidTap(_ sender: Any) {
        if let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            secondVC.delegate = self
            present(secondVC, animated: true)
        }
    }

    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        isEditingMode = editing
        tableView.setEditing(editing, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupedContacts.keys.sorted().count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionTitles = groupedContacts.keys.sorted()
        let letter = sectionTitles[section]
        return groupedContacts[letter]?.count ?? 0
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return groupedContacts.keys.sorted()[section]
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let sectionTitles = groupedContacts.keys.sorted()
            let letter = sectionTitles[indexPath.section]
                
            if var personsInSection = groupedContacts[letter] {
                personsInSection.remove(at: indexPath.row)
                groupedContacts[letter] = personsInSection
                persons = groupedContacts.values.flatMap { $0 }
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
        
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as? PersonTableViewCell
        
        let sectionTitles = groupedContacts.keys.sorted()
        let letter = sectionTitles[indexPath.section]
        
        if let personsInSection = groupedContacts[letter], indexPath.row < personsInSection.count {
            let person = personsInSection[indexPath.row]
            cell?.nameLabel.text = person.name
            cell?.lastNameLabel.text = person.lastName
        }
        return cell!
    }
}

extension ViewController: AddPersonDelegate {
    func configure(person: Person) {
        persons.append(person)
        persons.sort { $0.name < $1.name }
        
        groupedContacts = Dictionary(grouping: persons, by: { String($0.name.prefix(1)).uppercased() })
        
        tableView.reloadData()
    }
}

