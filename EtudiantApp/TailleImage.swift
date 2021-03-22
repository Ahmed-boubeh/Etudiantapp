//
//  TailleImage.swift
//  EtudiantApp
//
//  Created by Boubeh on 5/12/20.
//  Copyright © 2020 Boubeh. All rights reserved.
//

import UIKit

class TailleImage: UIImageView {

  override init(frame: CGRect) {
      super.init(frame: frame)
      layer.cornerRadius = frame.width/2
    layer.borderWidth = 0.1
    
      
      
  }
  
  required init?(coder: NSCoder) {
      super.init(coder :coder)
      layer.cornerRadius = frame.width/2
    layer.borderWidth = 0.1
      
  }

}
