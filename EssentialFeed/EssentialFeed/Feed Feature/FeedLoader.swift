//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Carlos Kimura on 19/12/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
