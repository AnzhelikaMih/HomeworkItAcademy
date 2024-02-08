//
//  CoreDataService.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import CoreData

final class CoreDataService {
    
    static let shared = CoreDataService()
    
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Models")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    private var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func saveStudent(with student: StudentViewModel) {
        let newStudent = Student(context: self.context)
        newStudent.age = student.age
        newStudent.name = student.name
        newStudent.teacher?.lastName = student.teacherLastName
        
        saveContext()
    }
    
    func saveTeacher(with teacher: TeacherViewModel) {
        let newTeacher = Teacher(context: self.context)
        newTeacher.firstName = teacher.firstName
        newTeacher.lastName = teacher.lastName
        
        saveContext()
    }
    
    func fetchStudents() -> [StudentViewModel] {
        let request = Student.fetchRequest()
        guard let students = try? context.fetch(request) else { return [] }
        let studentViewModels = students.compactMap { return StudentViewModel(name: $0.name ?? "nil", age: $0.age, teacherLastName: $0.teacher?.lastName ?? "nil") }
        return studentViewModels
    }
    
    func fetchTeachers() -> [TeacherViewModel] {
        let request = Teacher.fetchRequest()
        guard let teachers = try? context.fetch(request) else { return [] }
        let teacherViewModels = teachers.compactMap { return TeacherViewModel(firstName: $0.firstName ?? "nil", lastName: $0.lastName ?? "nil") }
        return teacherViewModels
    }
    
    private func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
