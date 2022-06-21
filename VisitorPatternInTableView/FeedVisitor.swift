//
//  FeedVisitor.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import Foundation

protocol FeedVisitor {
    associatedtype T
    func visit(_ viewObject: PlainTextFeedViewObject) -> T?
    func visit(_ viewObject: MediaFeedViewObject) -> T?
    func visit(_ viewObject: MemoriesFeedViewObject) -> T?
}
