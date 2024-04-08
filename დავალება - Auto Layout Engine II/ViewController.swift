//
//  ViewController.swift
//  დავალება - Auto Layout Engine II
//
//  Created by gvantsa gvagvalia on 4/7/24.
//

import UIKit

class ViewController: UIViewController {
    let topView: UIStackView = {
        let firstView = UIStackView()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.axis = .vertical
        firstView.distribution = .fillProportionally
        firstView.spacing = 3
        return firstView
    }()
    let middleView: UIStackView = {
        let middleView = UIStackView()
        middleView.translatesAutoresizingMaskIntoConstraints = false
        middleView.axis = .vertical
        middleView.spacing = 18
        middleView.distribution = .fillProportionally
        return middleView
    }()
    var bottomView: UIStackView = {
        let bottomStackView = UIStackView()
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .vertical
        bottomStackView.distribution = .fill
        bottomStackView.spacing = 10
        return bottomStackView
    }()
    var enterData: UIStackView = {
        let enterData = UIStackView()
        enterData.translatesAutoresizingMaskIntoConstraints = false
        enterData.axis = .vertical
        enterData.spacing = 20
        return enterData
    }()
    
    let laptopView: UIView = {
        let laptopView = UIView()
        laptopView.translatesAutoresizingMaskIntoConstraints = false
        return laptopView
    }()
    
    let laptopIcon: UIImageView = {
        let laptopIcon = UIImageView()
        laptopIcon.translatesAutoresizingMaskIntoConstraints = false
        laptopIcon.image = UIImage(systemName: "lock.laptopcomputer")
        laptopIcon.tintColor = .systemGray
        return laptopIcon
    }()
    
    let greetingView: UIStackView = {
        let greetingView = UIStackView()
        greetingView.translatesAutoresizingMaskIntoConstraints = false
        greetingView.axis = .vertical
        greetingView.distribution = .fill
        greetingView.spacing = 10
        return greetingView
    }()
    let greetingsLabel: UILabel = {
        let greetingsLabel = UILabel()
        greetingsLabel.translatesAutoresizingMaskIntoConstraints = false
        greetingsLabel.text = "მოგესალმებით!"
        greetingsLabel.font = UIFont.boldSystemFont(ofSize: 20)
        return greetingsLabel
    }()
    let greetingsText: UILabel = {
        let greetingsText = UILabel()
        greetingsText.translatesAutoresizingMaskIntoConstraints = false
        greetingsText.text = "ამ აპლიკაციის გამოყენების საუკეთესო გზა თქვენს ანგარიშზე შესვლაა, თუ არ გაქვთ ანგარიში გააკეთეთ, თუ არ გსურთ გაკეთება დასტოვეთ აქაურობა და წაშალეთ აპლიკაცია."
        greetingsText.numberOfLines = 0
        greetingsText.font = UIFont.systemFont(ofSize: 14)
        return greetingsText
    }()
    let authorizationLabel: UILabel = {
        let authorizationLabel = UILabel()
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        authorizationLabel.text = "ავტორიზაცია"
        authorizationLabel.font = UIFont.boldSystemFont(ofSize: 15)
        return authorizationLabel
    }()
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "სრული სახელი"
        nameLabel.font = UIFont.systemFont(ofSize: 12)
        return nameLabel
    }()
    let emailLabel: UILabel = {
        let emailLabel = UILabel()
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "ელ. ფოსტა"
        emailLabel.font = UIFont.systemFont(ofSize: 12)
        return emailLabel
    }()
    let passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.text = "პაროლი"
        passwordLabel.font = UIFont.systemFont(ofSize: 12)
        return passwordLabel
    }()
    
    let signInButton: UIButton = {
        let signInButton = UIButton()
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = .systemBlue
        signInButton.setTitle("შესვლა", for: .normal)
        signInButton.layer.cornerRadius = 10
        return signInButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(topView)
        view.addSubview(middleView)
        view.addSubview(bottomView)
        laptopView.addSubview(laptopIcon)
        greetingView.addArrangedSubview(greetingsLabel)
        greetingView.addArrangedSubview(greetingsText)
        topView.addSubview(laptopView)
        topView.addSubview(greetingView)
        addFirstView()
        addMiddleStackView()
        addBottomPart()
    }
    
    func addFirstView() {
        
        topView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        topView.bottomAnchor.constraint(equalTo: middleView.topAnchor, constant: 0).isActive = true
        
        laptopView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 0).isActive = true
        laptopView.bottomAnchor.constraint(equalTo: greetingView.topAnchor, constant: 0).isActive = true
        laptopView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        laptopView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        laptopView.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.4).isActive = true
        
        laptopIcon.centerYAnchor.constraint(equalTo: laptopView.centerYAnchor).isActive = true
        laptopIcon.centerXAnchor.constraint(equalTo: laptopView.centerXAnchor).isActive = true
        laptopIcon.heightAnchor.constraint(equalTo: laptopView.heightAnchor, multiplier: 0.8).isActive = true
        laptopIcon.widthAnchor.constraint(equalTo: laptopView.widthAnchor, multiplier: 0.35).isActive = true
        
        greetingView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        greetingView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        greetingView.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: 0).isActive = true
        greetingView.topAnchor.constraint(equalTo: laptopView.bottomAnchor, constant: 0).isActive = true
        
        greetingsLabel.leadingAnchor.constraint(equalTo: greetingView.leadingAnchor, constant: 0).isActive = true
        greetingsLabel.trailingAnchor.constraint(equalTo: greetingView.trailingAnchor, constant: 0).isActive = true
        greetingsLabel.topAnchor.constraint(equalTo: greetingView.topAnchor, constant: 0).isActive = true
        greetingsLabel.bottomAnchor.constraint(equalTo: greetingsText.topAnchor, constant: 0).isActive = true
        
        greetingsText.leadingAnchor.constraint(equalTo: greetingView.leadingAnchor, constant: 0).isActive = true
        greetingsText.trailingAnchor.constraint(equalTo: greetingView.trailingAnchor, constant: 0).isActive = true
        greetingsText.bottomAnchor.constraint(equalTo: greetingView.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func addMiddleStackView() {
        let authorizationView = UIView()
        authorizationView.translatesAutoresizingMaskIntoConstraints = false
        
        let thinLine = UIView()
        thinLine.translatesAutoresizingMaskIntoConstraints = false
        thinLine.backgroundColor = .systemBlue
        
        let nameView = UIView()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        
        let nameTextField = UITextField()
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.placeholder = "მაგ: ქეთინო ფერი"
        nameTextField.borderStyle = .roundedRect
        nameTextField.font = UIFont.boldSystemFont(ofSize: 12)
        
        let emailView = UIView()
        emailView.translatesAutoresizingMaskIntoConstraints = false
        
        let emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "მაგ: kusuna@mail.ru"
        emailTextField.borderStyle = .roundedRect
        emailTextField.font = UIFont.boldSystemFont(ofSize: 12)

        let passwordView = UIView()
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "მაგ: busuna123, jajanaIsMyKumiri2010"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.textColor = .black
        passwordTextField.font = UIFont.boldSystemFont(ofSize: 12)
     
        middleView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45).isActive = true
        middleView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        middleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        middleView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -230).isActive = true

        middleView.addArrangedSubview(authorizationView)
        middleView.addArrangedSubview(nameView)
        middleView.addArrangedSubview(emailView)
        middleView.addArrangedSubview(passwordView)
        middleView.addArrangedSubview(enterData)
        middleView.addArrangedSubview(signInButton)
        
        authorizationView.addSubview(authorizationLabel)
        authorizationView.addSubview(thinLine)
        nameView.addSubview(nameLabel)
        nameView.addSubview(nameTextField)
        emailView.addSubview(emailLabel)
        emailView.addSubview(emailTextField)
        passwordView.addSubview(passwordLabel)
        passwordView.addSubview(passwordTextField)
        
        authorizationLabel.topAnchor.constraint(equalTo: authorizationView.topAnchor, constant: 0).isActive = true
        authorizationLabel.bottomAnchor.constraint(equalTo: thinLine.topAnchor, constant: 0).isActive = true
        authorizationLabel.centerXAnchor.constraint(equalTo: authorizationView.centerXAnchor).isActive = true

        thinLine.leadingAnchor.constraint(equalTo: authorizationView.leadingAnchor, constant: 0).isActive = true
        thinLine.trailingAnchor.constraint(equalTo: authorizationView.trailingAnchor, constant: 0).isActive = true
        thinLine.bottomAnchor.constraint(equalTo: authorizationView.bottomAnchor, constant: 0).isActive = true
        thinLine.heightAnchor.constraint(equalTo: authorizationView.heightAnchor, multiplier: 0.04).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0).isActive = true
        nameLabel.topAnchor.constraint(equalTo: nameView.topAnchor, constant: 0).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -10).isActive = true
        nameLabel.heightAnchor.constraint(equalTo: nameTextField.heightAnchor, multiplier: 0.4).isActive = true
        
        nameTextField.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0).isActive = true
        nameTextField.bottomAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 0).isActive = true
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        emailLabel.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 0).isActive = true
        emailLabel.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 0).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: 0).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -6).isActive = true
        emailLabel.heightAnchor.constraint(equalTo: nameLabel.heightAnchor).isActive = true
        
        emailTextField.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 0).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: 0).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 0).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor).isActive = true
        
        passwordLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0).isActive = true
        passwordLabel.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 0).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -6).isActive = true
        passwordLabel.heightAnchor.constraint(equalTo: nameLabel.heightAnchor).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor).isActive = true
        
        middleView.addArrangedSubview(signInButton)
        signInButton.heightAnchor.constraint(equalTo: nameTextField.heightAnchor).isActive = true
        
    }
    
    func addBottomPart() {
        
        let anView = UIView()
        anView.translatesAutoresizingMaskIntoConstraints = false
        
        let anLabel = UILabel()
        anLabel.translatesAutoresizingMaskIntoConstraints = false
        anLabel.textColor = .systemGray
        anLabel.text = "ან"
        anLabel.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        
        let thinLine1 = UIView()
        thinLine1.translatesAutoresizingMaskIntoConstraints = false
        thinLine1.backgroundColor = .systemGray4
        
        let thinLine2 = UIView()
        thinLine2.translatesAutoresizingMaskIntoConstraints = false
        thinLine2.backgroundColor = .systemGray4
        
        let googleView = UIButton(type: .system)
        googleView.translatesAutoresizingMaskIntoConstraints = false
        googleView.backgroundColor = .systemGray6
        googleView.setTitleColor(.systemGray, for: .normal)
        googleView.setTitle("გამოიყენეთ გუგული", for: .normal)
        googleView.titleLabel?.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        googleView.layer.cornerRadius = 10
        
        let fbView = UIButton(type: .system)
        fbView.translatesAutoresizingMaskIntoConstraints = false
        fbView.backgroundColor = .systemGray6
        fbView.setTitleColor(.systemGray, for: .normal)
        fbView.setTitle("გამოიყენეთ ფეიზბურგი", for: .normal)
        fbView.titleLabel?.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        fbView.layer.cornerRadius = 10
        
        anView.addSubview(thinLine1)
        anView.addSubview(anLabel)
        anView.addSubview(thinLine2)
        
        bottomView.addArrangedSubview(anView)
        bottomView.addArrangedSubview(googleView)
        bottomView.addArrangedSubview(fbView)
        
        anView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10).isActive = true
        
        anLabel.centerXAnchor.constraint(equalTo: anView.centerXAnchor).isActive = true
        anLabel.centerYAnchor.constraint(equalTo: anView.centerYAnchor).isActive = true
        
        thinLine1.leadingAnchor.constraint(equalTo: anView.leadingAnchor, constant: 0).isActive = true
        thinLine1.trailingAnchor.constraint(equalTo: anLabel.leadingAnchor, constant: -7).isActive = true
        thinLine1.centerYAnchor.constraint(equalTo: anView.centerYAnchor, constant: 0).isActive = true
        thinLine1.heightAnchor.constraint(equalToConstant: 3).isActive = true
        
        thinLine2.leadingAnchor.constraint(equalTo: anLabel.trailingAnchor, constant: 7).isActive = true
        thinLine2.trailingAnchor.constraint(equalTo: anView.trailingAnchor, constant: 0).isActive = true
        thinLine2.centerYAnchor.constraint(equalTo: anView.centerYAnchor, constant: 0).isActive = true
        thinLine2.heightAnchor.constraint(equalToConstant: 3).isActive = true
        
        anView.heightAnchor.constraint(equalTo: googleView.heightAnchor).isActive = true
        googleView.heightAnchor.constraint(equalTo: fbView.heightAnchor).isActive = true
        
        bottomView.topAnchor.constraint(equalTo: middleView.bottomAnchor, constant: 0).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: middleView.leadingAnchor, constant: 0).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: middleView.trailingAnchor, constant: 0).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
    }
    
}
