//
//  ViewController.swift
//  student
//
//  Created by faten aldosari on 03/03/2024.
//

import UIKit

class ViewController: UITableViewController {
    var student: [Student] = [Student(name: "faten", gpa: "4.5", profileImage: "h"),
                              Student(name: "noura", gpa: "4.5", profileImage: "h")]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        student.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let studentt = student[indexPath.row]
        cell.textLabel?.text = "name: \(studentt.name) gpa: \(studentt.gpa)"
        cell.imageView?.image = UIImage(named: studentt.profileImage)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        let selectedStudent = student[indexPath.row]
        detailVC.sstudent = selectedStudent
        navigationController?.pushViewController(detailVC, animated: true)
        }
    }



