//
//  HomeViewController.swift
//  MovieApp
//
//  Created by Wijdan Almutairi on 21/08/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Categories
    let categoryHorror =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Horror")
    let categoryComedy =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Comedy")
    let categoryAction =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Action")
    let categoryDrama =  CategoriesButton(backgroundColor: UIColor(named: "categoryBox") ?? .systemBackground, title: "Drama")
    
    // stacks
    var stackH = UIStackView()
    var stackHMovies = UIStackView()
    

    // Labels
    let categoryTitle = TitleLabel(text: "Categories", textAlignment: .left, fontSize: 17, fontWeight: .medium)
    let moviesList = TitleLabel(text: "Movies List", textAlignment: .left, fontSize: 17, fontWeight: .medium)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCategoryTitle()
        configureCategories()
        configureMoviesListTitle()
    
    }
    
    func configureCategoryTitle(){
        view.addSubview(categoryTitle)
        NSLayoutConstraint.activate([
            categoryTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            categoryTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            categoryTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            categoryTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureCategories() {
        stackH = UIStackView(arrangedSubviews: [categoryHorror, categoryComedy, categoryAction, categoryDrama ])
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
            stackH.topAnchor.constraint(equalTo: categoryTitle.bottomAnchor, constant: 20),
            stackH.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            stackH.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            stackH.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureMoviesListTitle(){
        let refreshButton = configureRefreshButton()
        stackHMovies = UIStackView(arrangedSubviews: [moviesList, refreshButton])
        
        stackHMovies.distribution = .fillProportionally
        stackHMovies.axis = .horizontal
        stackHMovies.spacing = 25
        stackHMovies.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackHMovies)
        NSLayoutConstraint.activate([
            stackHMovies.topAnchor.constraint(equalTo: stackH.bottomAnchor, constant: 40),
            stackHMovies.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            stackHMovies.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            stackHMovies.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureRefreshButton() -> UIButton {
        let refreshButton = UIButton(type: .custom)
        refreshButton.tintColor = UIColor(named: "tintTwo")
        refreshButton.setImage(UIImage(systemName:"arrow.clockwise"), for: .normal)
        refreshButton.imageView!.contentMode = .scaleAspectFit
        refreshButton.addTarget(self, action: #selector(pushRefresh), for: .touchUpInside)
        refreshButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
           refreshButton.widthAnchor.constraint(equalToConstant: 120),
           refreshButton.heightAnchor.constraint(equalToConstant: 100)
             ])
            return refreshButton
    }
    
    @objc func pushCategory(_ sender: UIButton) {
        sender.backgroundColor = UIColor(named: "tint")
    }
    
    @objc func pushRefresh(_ sender: UIButton) {
        //sender.backgroundColor = UIColor(named: "tint")
    }
}
