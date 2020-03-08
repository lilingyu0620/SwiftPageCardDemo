//
//  ViewController.swift
//  SwiftCollectionViewPageCardDemo
//
//  Created by lly on 2020/3/8.
//  Copyright © 2020 lly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let leftPageView = PagerView(frame: .zero)
    
    private let centerPageView = PagerView(frame: .zero)


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()

    }


    func setupUI() {
        
        leftPageView.transformer = PagerViewTransformer(type: .linear)
        leftPageView.collectionViewLayout.leadingSpacing = 10
        leftPageView.collectionViewLayout.trailingSpacing = UIScreen.main.bounds.size.width - 280 - 10
        leftPageView.automaticSlidingInterval = 3.0
        leftPageView.isInfinite = true
        leftPageView.delegate = self
        leftPageView.dataSource = self
        leftPageView.interitemSpacing = 6
        leftPageView.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "CollectionViewCell")
        leftPageView.decelerationDistance = 1
        leftPageView.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 100)
        leftPageView.itemSize = CGSize(width: 280, height: 100)
        view.addSubview(leftPageView)
        
        
        centerPageView.transformer = PagerViewTransformer(type: .zoomOut)
        centerPageView.collectionViewLayout.leadingSpacing = (UIScreen.main.bounds.size.width - 280) * 0.5
        centerPageView.collectionViewLayout.trailingSpacing = (UIScreen.main.bounds.size.width - 280) * 0.5
        centerPageView.automaticSlidingInterval = 3.0
        centerPageView.isInfinite = true
        centerPageView.delegate = self
        centerPageView.dataSource = self
        centerPageView.interitemSpacing = 6
        centerPageView.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "CollectionViewCell")
        centerPageView.decelerationDistance = 1
        centerPageView.frame = CGRect(x: 0, y: 300, width: UIScreen.main.bounds.size.width, height: 100)
        centerPageView.itemSize = CGSize(width: 280, height: 100)
        view.addSubview(centerPageView)
    }

    
    
}

extension ViewController: PagerViewDataSource, PagerViewDelegate {
    
    public func numberOfItems(in pagerView: PagerView) -> Int {
        return 10
    }
    
    public func pagerView(_ pagerView: PagerView, cellForItemAt index: Int) -> UICollectionViewCell {
        let cell = pagerView.dequeueReusableCell(withClass:CollectionViewCell.self, for: index)
        cell.layer.cornerRadius = 4
        cell.config(with: index)
        return cell
    }
}
