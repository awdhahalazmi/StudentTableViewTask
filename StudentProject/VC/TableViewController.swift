//
//  ViewController.swift
//  StudentProject
//
//  Created by Awdhah Alazemi on 03/03/2024.
//

import UIKit

class TableViewController: UITableViewController {
    var students: [Student] = [Student(studentName: "Awdhah", studentId: 50176, studentGpa: "3.51", profileImage: "profile"),
                              Student(studentName: "Fatmah", studentId: 18197, studentGpa: "3.41", profileImage: "profile"),
                              Student(studentName: "Haya", studentId: 191195, studentGpa: "3.50", profileImage: "profile")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")}
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //reusable cell
        let students = students[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Student: \( students.studentName) , ID: \( students.studentId) "
        cell.imageView?.image = UIImage(named: students.profileImage)
       
        
        //return
        return cell
        
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let VC = ViewController( )
//        let selectedStudent = students[indexPath.row]
//        
//        VC.student = selectedStudent
//        navigationController?.pushViewController(VC, animated: true)
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vC = ViewController()
        let selectedStudent = students[indexPath.row]
        vC.student = selectedStudent

        navigationController?.pushViewController(vC, animated: true)


     
    }
    
    
    
    
}









    



//override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let detailAccountVC = DetailAccountViewController( )
//    let selectedAccount = bankAcccounts[indexPath.row]
//    
//    detailAccountVC.bankAccount = selectedAccount
//    navigationController?.pushViewController(detailAccountVC, animated: true)
//}




