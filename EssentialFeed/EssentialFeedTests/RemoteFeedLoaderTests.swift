//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Carlos Kimura on 19/12/23.
//

import XCTest

class RemoteFeedLoader { 
    func load() { 
        HTTPClient.shared.requestURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() { }
    
    var requestURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestURL)
    }

}
