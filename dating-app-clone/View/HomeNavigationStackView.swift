//
//  HomeNavigationStackView.swift
//  dating-app-clone
//
//  Created by Ramzy Rashaun Arief on 30/06/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import UIKit

class HomeNavigationStackView: UIStackView {
    
    // MARK: - Properties
    
    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let tinderIcon = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        anchor(height: 80)
        tinderIcon.contentMode = .scaleAspectFit
        
        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingsButton, UIView(), tinderIcon, UIView(), messageButton].forEach { view in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
