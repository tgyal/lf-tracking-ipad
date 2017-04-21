//
//  LFImage.swift
//  LFTracking
//
//  Created by Tanguy Albrici on 21.04.17.
//  Copyright © 2017 Tanguy Albrici. All rights reserved.
//

import UIKit

@IBDesignable class LFImage: UIStackView {
    
    //MARK: Properties
    @IBInspectable var imageSize: CGSize = CGSize(width: 469.5, height: 325.5)
    
    //MARK: Attributes
    private var images: [UIImageView] = [UIImageView]()
    private var currentImage: CGPoint = CGPoint(x: 7, y: 7)

    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupImages()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupImages()
    }
    
    //MARK: User Interaction
    func moveImage(translation: CGPoint) {
        
    }
    
    //MARK: Private Methods
    
    private func setupImages() {
        
        // Add two image to the stack
        for _ in 0..<2{
            
            let img = UIImageView()
            img.image = UIImage(named: "Bikes/007_007")
            
            // Add constraints
            img.translatesAutoresizingMaskIntoConstraints = false
            img.heightAnchor.constraint(equalToConstant: imageSize.height).isActive = true
            img.widthAnchor.constraint(equalToConstant: imageSize.width).isActive = true
            
            images.append(img)
            addArrangedSubview(img)
        }
        
    }

}
