//
//  CategoriesButton.swift
//  MovieApp
//
//  Created by Wijdan Almutairi on 25/08/2022.
//

import UIKit

class CategoriesButton: UIButton {

    override init (frame: CGRect){
        super.init(frame: frame)
        let width = 80
        let height = 80
        self.frame.size = CGSize(width: width, height: height)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init (backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        let width = 80
        let height = 80
        self.frame.size = CGSize(width: width, height: height)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = UIColor(named: "categoryBox")
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
