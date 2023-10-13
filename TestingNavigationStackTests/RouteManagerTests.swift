//
//  RouteManagerTests.swift
//  TestingNavigationStackTests
//
//  Created by thaxz on 13/10/23.
//

import XCTest
@testable import TestingNavigationStack

final class RouteManagerTests: XCTestCase {

    /// System under test
    var sut: NavigationRouter!
    
    // Before every test
    override func setUp() {
        sut = NavigationRouter()
    }

    // After every test
    override func tearDown() {
        sut = nil
    }
    
    
    
}
