//
//  RNThubView.swift
//  FabricSwift
//
//  Created by TransformHub on 04/07/22.
//

import Foundation
import UIKit

@objcMembers class RNThubView: UIView {
  let btnLogin:UIButton = {
      let btn = UIButton(type:.system)
      btn.backgroundColor = .blue
      btn.setTitle("Login", for: .normal)
      btn.tintColor = .white
      btn.layer.cornerRadius = 5
      btn.clipsToBounds = true
      btn.translatesAutoresizingMaskIntoConstraints = false
      return btn
  }()
  
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(btnLogin)
    addConstraintsToButtonLogin()
  }
  
  func addConstraintsToButtonLogin(){
    btnLogin.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
      btnLogin.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
      btnLogin.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
      btnLogin.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
  }
  
  
}















































