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
    
    func test_NavRouter_Routes_IsEmptyOnInitialization(){
        XCTAssertEqual(sut.routes.count, 0, "There should be no routes in the stack")
    }
    
    func test_NavRouter_Push_OneScreenHasOneRoute(){
        sut.push(to: .menuItem(item: foods[0]))
        XCTAssertEqual(sut.routes.count, 1, "There should be a route in the stack")
    }
    
    func test_NavRouter_Push_TwoScreenHasTwoRoutes(){
        sut.push(to: .menuItem(item: foods[0]))
        sut.push(to: .cart)
        XCTAssertEqual(sut.routes.count, 2, "There should be two routes in the stack")
    }
    
    func test_NavRouter_PopToRoot_HasNoRoutes(){
        sut.push(to: .menuItem(item: foods[0]))
        sut.push(to: .cart)
        sut.popToRoot()
        XCTAssertEqual(sut.routes.count, 0, "There should be no routes in the stack")
    }
    
    func test_NavRouter_PopToLast_HasOneRoute(){
        sut.push(to: .menuItem(item: foods[0]))
        sut.push(to: .cart)
        sut.popToLast()
        XCTAssertEqual(sut.routes.count, 0, "There should be 1 route in the stack")
    }
    
}
