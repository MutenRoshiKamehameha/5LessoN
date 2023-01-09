//
//  ViewController.swift
//  5LessoN
//
//  Created by Байгелди Акылбек уулу on 5/1/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var controller:JokeController!
    
//
//    private lazy var backImage: UIImage = {
//        let view = UIImageView()
//        view.image = UIImage(named: <#T##String#>
//        return view
//    }()
//
//
    private lazy var setupLabel: UILabel = {
        let view = UILabel()
        view.text = "setup:"
        return view
    }()
    
    
    
    private lazy var punchlineLabel: UILabel = {
        let view = UILabel()
        view.text = "punchline:"
        return view
    }()
    
    
    
    private lazy var punchlineTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Answer?"
        view.layer.cornerRadius = 10
        
        return view
    }()
    
    
    
    private lazy var punchlineButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .systemPink
        view.setTitle("?", for: .normal)
        view.layer.cornerRadius = 20
        view.setTitleColor(.white, for: .normal)
        return view
    }()
    
    
    
    private lazy var nextJokeBUtton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .systemPink
        view.setTitle("next", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 20
        view.addTarget(self, action: #selector(nextJokeButtonTap), for: .touchUpInside)
        return view
    }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller = JokeController(view: self)
        setupSubviews()
        controller.getJOKE()
    }
    
    
    
    
    
    
    func setupSubviews(){
       
        view.addSubview(setupLabel)
        setupLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
        }
        
        view.addSubview(punchlineLabel)
        punchlineLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(setupLabel.snp.bottom).offset(80)
        }
        
        view.addSubview(punchlineTextField)
        punchlineTextField.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(punchlineLabel.snp.bottom).offset(80)
            make.width.equalToSuperview().offset(-80)
            make.height.equalTo(40)
        }
        
        view.addSubview(punchlineButton)
        punchlineButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview().offset(-100)
            make.top.equalTo(punchlineTextField.snp.bottom).offset(40)
            make.width.height.equalTo(60)
        }
        
        view.addSubview(nextJokeBUtton)
         nextJokeBUtton.snp.makeConstraints{ make in
             make.centerX.equalToSuperview().offset(100)
             make.top.equalTo(punchlineTextField.snp.bottom).offset(40)
             make.width.height.equalTo(60)
        }
    }
    
    
   public func setJokesSetup(){
        setupLabel.text = controller.joke?.setup
    }
    
    @objc func nextJokeButtonTap(){
        controller.getJOKE()
    }

}

