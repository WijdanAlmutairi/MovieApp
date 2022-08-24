//
//  HomeViewController.swift
//  MovieApp
//
//  Created by Wijdan Almutairi on 21/08/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let categoryHorror =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Horror")
    
    let categoryComedy =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Comedy")
    
    let categoryAction =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Action")
    
    let categoryDrama =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Drama")

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCategories()
    
    }
    
    func configureCategories() {
        let stackH = UIStackView(arrangedSubviews: [categoryHorror, categoryComedy, categoryAction, categoryDrama ])
        stackH.distribution = .fillEqually
        stackH.axis = .horizontal
        stackH.spacing = 10
        stackH.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackH)
        
        // set buttons to the function
        categoryHorror.addTarget(self, action: #selector(pushCategory), for: .touchUpInside)
        categoryComedy.addTarget(self, action: #selector(pushCategory), for: .touchUpInside)
        categoryAction.addTarget(self, action: #selector(pushCategory), for: .touchUpInside)
        categoryDrama.addTarget(self, action: #selector(pushCategory), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stackH.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            stackH.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            stackH.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            stackH.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func pushCategory(_ sender: UIButton) {
        sender.backgroundColor = UIColor(named: "tint")
    }
}
