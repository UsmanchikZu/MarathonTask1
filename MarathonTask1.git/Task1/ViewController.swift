//
//  ViewController.swift
//  Gradient and Shadow
//
//  Created by Зулейха on 01.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let ShadowView: UIView = {
        let view = UIView()
        
        view.frame =  CGRect(x: 100, y: 0, width: 150, height: 150)
        
        return view
    }()
    
    private let GradientView: UIView = {
        let view = UIView()
        
        view.frame = CGRect(x: 100, y: 0, width: 150, height: 150)
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ShadowView.backgroundColor = .white
        ShadowView.layer.shadowOpacity = 0.5
        ShadowView.layer.masksToBounds = false
        ShadowView.layer.shouldRasterize = true
        ShadowView.layer.shadowColor = UIColor.black.cgColor
        ShadowView.layer.cornerRadius = 15
        ShadowView.layer.shadowOffset = CGSize(width: 15, height: 15)
        
        let gradient = CAGradientLayer()
        gradient.frame = GradientView.bounds
        gradient.colors = [UIColor.green.cgColor, UIColor.gray.cgColor]
        gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.locations = [0.0, 1.0]
        gradient.opacity = 1.0
        gradient.cornerRadius = 10
        GradientView.layer.insertSublayer(gradient, at: 0)
        
        let cornerRadius: CGFloat = 14.0
        GradientView.layer.cornerRadius = cornerRadius
        GradientView.layer.masksToBounds = true
        
        setupViews()
        
    }
    
    private func setupViews() {
        
        view.addSubview(ShadowView)
        view.addSubview(GradientView)
        
        ShadowView.translatesAutoresizingMaskIntoConstraints = false
        GradientView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            GradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            GradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            GradientView.widthAnchor.constraint(equalToConstant: 120),
            GradientView.heightAnchor.constraint(equalToConstant: 120),
            
            ShadowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ShadowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            ShadowView.widthAnchor.constraint(equalToConstant: 120),
            ShadowView.heightAnchor.constraint(equalToConstant: 120),
        ])

        
    }
}
