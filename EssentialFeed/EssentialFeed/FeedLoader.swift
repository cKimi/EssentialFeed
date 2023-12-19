//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Carlos Kimura on 19/12/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
