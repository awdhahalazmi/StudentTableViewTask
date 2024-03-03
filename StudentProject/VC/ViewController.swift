//
//  ViewController.swift
//  StudentProject
//
//  Created by Awdhah Alazemi on 03/03/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var student: Student?
    let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))

    let backImageView = UIImageView()


    
    private let nameLabel = UILabel( )
    private let idLabel = UILabel( )
    private let gpaLabel = UILabel( )
    private let profileImageView = UIImageView( )
    
    let nameText = UILabel()
    let idText = UILabel()
    let gpaText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backImageView)
        view.addSubview(visualEffectView)
        visualEffectView.snp.makeConstraints {make in
                   make.edges.equalToSuperview()}
        view.addSubview(nameLabel)
        view.addSubview(idLabel)
        view.addSubview(gpaLabel)
        view.addSubview(profileImageView)
        view.addSubview(nameText)
        view.addSubview(idText)
        view.addSubview(gpaText)

        

        setUpView( )
        setUpLayout( )
        configureWithBankAccount( )
        backImageView.image = UIImage(named: "galaxyy" )



        // Do any additional setup after loading the view.
    }
    func setUpView( ){
        
        nameLabel.font = .systemFont(ofSize: 16, weight: .bold)
        idLabel.font = .systemFont(ofSize: 16, weight: .bold)
        gpaLabel.font = .systemFont(ofSize: 16, weight: .bold)

        
        nameText.text = "Name: "
        nameText.font = .systemFont(ofSize: 16, weight: .bold)
        
        idText.text = "ID: "
        idText.font = .systemFont(ofSize: 16, weight: .bold)
        
        gpaText.text = "Gpa: "
        gpaText.font = .systemFont(ofSize: 16, weight: .bold)
        
       
        
        
    }
    func setUpLayout( ){
        backImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
        }
        nameLabel.snp.makeConstraints{ make in
            
        
            make.bottom.equalTo(profileImageView.snp.bottom).offset(33)
            make.centerX.equalToSuperview()
        }
    
        idLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(13)
            make.centerX.equalToSuperview()
        }
        gpaLabel.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(13)
            make.centerX.equalToSuperview()
        }
        
        nameText.snp.makeConstraints { make in
            make.trailing.equalTo(nameLabel.snp.leading).offset(-10)
            make.centerY.equalTo(nameLabel)
            
        }
        idText.snp.makeConstraints { make in
            make.trailing.equalTo(idLabel.snp.leading).offset(-10)
            make.centerY.equalTo(idLabel)
        }
        gpaText.snp.makeConstraints { make in
            make.trailing.equalTo(gpaLabel.snp.leading).offset(-10)
            make.centerY.equalTo(gpaLabel)
            
        }
        
    }
    func configureWithBankAccount( ){
        nameLabel.text = student?.studentName
        idLabel.text = "\( student?.studentId ?? 0)"
        gpaLabel.text = student?.studentGpa
        profileImageView.image = UIImage(named: student!.profileImage)

    }
    
    


}
