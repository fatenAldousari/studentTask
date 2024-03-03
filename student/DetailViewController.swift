//
//  DetailViewController.swift
//  student
//
//  Created by faten aldosari on 03/03/2024.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    var sstudent: Student?
    
    private let studentName = UILabel()
    private let studentGpa = UILabel()
    private let studentImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configStudent()
        setupViews()
        setupLayout()
        // Do any additional setup after loading the view.
    }
    private func setupViews(){
        view.backgroundColor = .white
        studentName.font = .systemFont(ofSize: 16, weight: .medium)
        studentGpa.font = .systemFont(ofSize: 16, weight: .medium)
        
        view.addSubview(studentName)
        view.addSubview(studentGpa)
        view.addSubview(studentImage)
    }

    private func setupLayout(){
        studentImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
        }
        studentName.snp.makeConstraints { make in
            make.top.equalTo(studentImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        studentGpa.snp.makeConstraints { make in
            make.top.equalTo(studentName.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    private func configStudent(){
        studentName.text = "student name: \(sstudent?.name ?? "N/A")"
        studentGpa.text = "student gpa: \(sstudent?.gpa ?? "N/A")"
        studentImage.image = UIImage(named: sstudent?.profileImage ?? "image")
    }

}
