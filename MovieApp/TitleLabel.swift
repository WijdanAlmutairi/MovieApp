//
//  TitleLabel.swift
//  MovieApp
//
//  Created by Wijdan Almutairi on 29/08/2022.
//

import UIKit

class TitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init (text: String, textAlignment: NSTextAlignment, fontSize: CGFloat, fontWeight: UIFont.Weight){
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        self.text = text
        configure()
    }
    
    private func configure () {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
