//
//  ViewController.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 15.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var buttomEnter: UIButton!
    
    @IBOutlet weak var titleImageView: UIImageView!
    
    @IBOutlet weak var lableTitle: UILabel!
    
  
    @IBOutlet weak var loginLable: UILabel!
    
    @IBOutlet weak var passwordLable: UILabel!
    
    
    
    
    
    func addShadow (view: UIView){
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 1
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapFunction))
        self.view.addGestureRecognizer(tapRecognizer)
        
        addShadow(view: loginTextField)
        addShadow(view: passwordTextField)
       addShadow(view: buttomEnter)
    
        buttomEnter.layer.cornerRadius = 10
        
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor]
        
        gradientLayer.locations = [0, 0.5, 1]
        gradientLayer.startPoint = CGPoint.zero
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = self.view.bounds
        gradientLayer.zPosition = 0
        
        self.view.layer.addSublayer(gradientLayer)
        
    
        loginTextField.layer.zPosition = 1
        passwordTextField.layer.zPosition = 1
        buttomEnter.layer.zPosition = 1
        titleImageView.layer.zPosition = 1
        lableTitle.layer.zPosition = 1
        passwordLable.layer.zPosition = 1
        loginLable.layer.zPosition = 1
        
        
    }

    @objc func tapFunction (){
        self.view.endEditing(true)
    }
    
    
    
@IBAction func pressButomEnter(_ sender: UIButton) {
        
       // guard let login = loginTextField.text,
         //     let password = passwordTextField.text
        //else {return}
       // if login == "Dima",
         //  password == "qwerty" {
            
            loginTextField.backgroundColor = UIColor.blue
            passwordTextField.backgroundColor = UIColor.blue
            performSegue(withIdentifier: "toGreenSegue", sender: nil)
            
    //} else {
           // loginTextField.backgroundColor = UIColor.green
            //passwordTextField.backgroundColor = UIColor.green
        
        }
    }
//}
    
    
    



