//
//  FirstViewController.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBOutlet private weak var studentsButton: UIButton!
    @IBOutlet private weak var teachersButton: UIButton!
    
    @IBAction private func studentsButtonDidTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "StudentTableViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "StudentTableViewController") as? StudentTableViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction private func teachersButtonDidTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TeacherTableViewController", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "TeacherTableViewController") as? TeacherTableViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
   




