//
//  LFImageStack.swift
//  LFTracking
//
//  Created by Tanguy Albrici on 21.04.17.
//  Copyright © 2017 Tanguy Albrici. All rights reserved.
//

import UIKit

@IBDesignable class LFImageStack: UIStackView, UIGestureRecognizerDelegate {
    
    //MARK: Properties
    
    @IBInspectable var imageSize: CGSize = CGSize(width: 469.5, height: 325.5)
    
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
    
    //MARK: Private Methods
    
    private func setupImages() {
        
        // Add two images to the stack
        for _ in 0..<2{
            
            let img = UIImageView()
            img.image = UIImage(named: "Bikes/007_007")
            img.isUserInteractionEnabled = true
            
            // Add constraints
            img.translatesAutoresizingMaskIntoConstraints = false
            img.heightAnchor.constraint(equalToConstant: imageSize.height).isActive = true
            img.widthAnchor.constraint(equalToConstant: imageSize.width).isActive = true
            
            // Add recognizer
            let recognizer = UIPanGestureRecognizer(target: self, action:#selector(LFImageStack.moveImage(recognizer:)))
            recognizer.delegate = self
            img.addGestureRecognizer(recognizer)
            
            images.append(img)
            addArrangedSubview(img)
        }
        
    }
    
    @objc private func moveImage(recognizer: UIPanGestureRecognizer) {

        let newImage = UIImage(named: "Bikes/000_007")
        
        for img in images{
            img.image = newImage
        }
    }

}
