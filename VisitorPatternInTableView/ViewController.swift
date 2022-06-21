//
//  ViewController.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let cellVisitor = FeedCellVisitor()
    
    private var viewObjects: [FeedViewObject] = [] {
        didSet {
            viewObjects.forEach { viewObject in
                let cellName = viewObject.accept(visitor: cellVisitor)
                tableView.register(cellName, forCellReuseIdentifier: String(describing: cellName))
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        viewObjects = [
            MemoriesFeedViewObject(),
            MediaFeedViewObject(),
            PlainTextFeedViewObject(),
            MediaFeedViewObject(),
            PlainTextFeedViewObject(),
            MediaFeedViewObject(),
            PlainTextFeedViewObject()
        ]
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewObjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewObject = viewObjects[indexPath.row]
        let cellName = viewObject.accept(visitor: cellVisitor)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: cellName), for: indexPath)
        let cellConfiguratorVisitor = FeedCellConfiguratorVisitor(cell: cell)
        viewObject.accept(visitor: cellConfiguratorVisitor)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let viewObject = viewObjects[indexPath.row]
        let cellHeightVisitor = FeedCellHeightVisitor()
        let cellHeight = viewObject.accept(visitor: cellHeightVisitor) ?? UITableView.automaticDimension
        return cellHeight
    }
}
