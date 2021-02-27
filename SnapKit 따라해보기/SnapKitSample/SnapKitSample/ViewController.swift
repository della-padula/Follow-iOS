//
//  ViewController.swift
//  SnapKitSample
//
//  Created by denny on 2021/02/26.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    
    private var inputField: UITextField = UITextField()
    private var enterButton: UIButton = UIButton()
    private var resultLabel: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(inputField)
        view.addSubview(enterButton)
        view.addSubview(resultLabel)
        
        inputField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(44)
        }
        
        enterButton.snp.makeConstraints { make in
            make.top.equalTo(inputField.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(44)
        }
        
        resultLabel.snp.makeConstraints { make in
            make.top.equalTo(enterButton.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(44)
        }
        
        inputField.placeholder = "Enter some text."
        
        enterButton.setTitle("ENTER", for: .normal)
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.backgroundColor = .systemBlue
        enterButton.layer.cornerRadius = 20
        enterButton.addTarget(self, action: #selector(onClickButton(_:)), for: .touchUpInside)
        
        resultLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        resultLabel.textColor = .black
    }
    
    @objc
    private func onClickButton(_ sender: Any?) {
        resultLabel.text = "Button Clicked == \(inputField.text ?? "nil")"
    }


}

