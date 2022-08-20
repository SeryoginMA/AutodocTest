//
//  NewsViewController.swift
//  AutodocTest
//
//  Created by Михаил Серёгин on 21.08.2022.
//

import UIKit

final class NewsViewController: UIViewController {
    
    @IBOutlet weak var newsCollectionView: UICollectionView!
    
    private let viewModel: NewsViewModelProtocol
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let newsCell = UINib(nibName: "NewsCell",
                                      bundle: nil)
    
        newsCollectionView.register(newsCell, forCellWithReuseIdentifier: "NewsCell")
        newsCollectionView.delegate = self
        newsCollectionView.dataSource = self
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        viewModel = NewsViewModel()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        viewModel = NewsViewModel()
        super.init(coder: coder)
    }
}

extension NewsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return viewModel.news.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = newsCollectionView.dequeueReusableCell(withReuseIdentifier: "NewsCell", for: indexPath) as! NewsCell
        cell.titleLabel?.text = viewModel.news[indexPath.row]
        
        return cell
    }
}
