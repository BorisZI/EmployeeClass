//
//  main.swift
//  EmployeeClass
//
//  Created by Boris Alexandrov on 16.09.2022.
//

import Foundation

class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
}

var names = ["Boris", "Kristina", "Kamili", "Apelsinka"]
var surnames = ["Zitserman", "Dobromirova", "Dobro", "Zitserman"]

var employees: [Employee] = []
for _ in 1...10 {
    let employee = Employee(
        salary: Int.random(in: 1000...2000),
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? ""
    )
    employees.append(employee)
}

for employee in employees {
    print("\(employee.name) \(employee.surname)'s salary is $\(employee.salary)")
}

var employeesWithEvenSalary: [Employee] = []

//Первый вариант решения

//for employee in employees {
//    if employee.salary % 2 == 0 {
//        employeesWithEvenSalary.append(employee)
//    }
//}

//Второй вариант решения

//for employee in employees {
//    if employee.salary.isMultiple(of: 2) {
//        employeesWithEvenSalary.append(employee)
//    }
//}

//Третий вариант решения

employeesWithEvenSalary = employees.filter { $0.salary.isMultiple(of: 2) }

for employee in employeesWithEvenSalary {
    print("\(employee.name) \(employee.surname)'s even salary is $\(employee.salary)")
}









