//
//  SwiftUserDefaultTests.swift
//  SwiftUserDefaultTests
//
//  Created by Edmond on 19/03/2560 BE.
//  Copyright © 2560 BE Edmond. All rights reserved.
//

import XCTest
@testable import SwiftUserDefault


struct TestUserDefault {
  @UserDefaultsItem("objectTest") static var objectTest: AnyObject
  @UserDefaultsItem("stringTest") static var stringTest: String
  @UserDefaultsItem("boolTest") static var boolTest: Bool
  @UserDefaultsItem("intTest") static var intTest: Int
  @UserDefaultsItem("floatTest") static var floatTest: Float
  @UserDefaultsItem("doubleTest") static var doubleTest: Double
  @UserDefaultsItem("dataTest") static var dataTest: Data
  @UserDefaultsItem("dateTest") static var dateTest: Date
  @UserDefaultsItem("[Bool]") static var boolArrayTest: [Bool]
  @UserDefaultsItem("[Int]") static var intArrayTest: [Int]
  @UserDefaultsItem("[String]") static var stringArrayTest: [String]
  @UserDefaultsItem("[Data]") static var dataArrayTest: [Data]
  @UserDefaultsItem("<String : Int>") static var dictIntTest: [String : Int]
  @UserDefaultsItem("<String : String>") static var dictStringTest: [String : String]
  @UserDefaultsItem("<String : Date>") static var dictDateTest: [String : Date]
  @UserDefaultsItem("<String : Bool>") static var dictBoolTest: [String : Bool]
//  @UserDefaultsItem("dictionary<String : [Int]>") static var dicArrayTest: [String : [Int]]
}

struct TestResult {
  static var objectValue: NSDictionary = NSDictionary(dictionary: ["sss" : "ss"])
  static var stringValue: String = "SwiftStringTest"
  static var boolValue: Bool = true
  static var intValue: Int = 123456
  static var floatValue: Float = 123456.1234
  static var doubleValue: Double = 123456.12345678
  static var dataValue: Data = "SwiftDataTest".data(using: .utf8, allowLossyConversion: true)!
  static var dateValue: Date = Date(timeIntervalSinceNow: 10000)
  static var boolArrayValue: [Bool] = [true, true, false]
  static var intArrayValue: [Int] = [1, 2, 3, 4, 5]
  static var stringArrayValue: [String] = ["1", "2", "3"]
  static var dataArrayValue: [Data] = [TestResult.dataValue, TestResult.dataValue, TestResult.dataValue]
  static var dictIntValue = ["one" : 1, "two" : 2, "three" : 3]
  static var dictStringValue = ["one" : "1", "two" : "2"]
  static var dictDateValue = ["time" : TestResult.dateValue, "time2" : TestResult.dateValue]
  static var dictBoolValue = ["time" : true, "time2" : false]
  static var dictArrayValue = ["time" : [2], "time2" : [1]]
}


class SwiftUserDefaultTests: XCTestCase {

  override func setUp() {
    super.setUp()

    TestUserDefault.objectTest = TestResult.objectValue
    XCTAssert(true, "test set \(TestUserDefault.objectTest.debugDescription.debugDescription) ok")

    TestUserDefault.stringTest = TestResult.stringValue
    XCTAssert(true, "test set \(TestUserDefault.stringTest.debugDescription) ok")

    TestUserDefault.boolTest = TestResult.boolValue
    XCTAssert(true, "test set \(TestUserDefault.boolTest.debugDescription) ok")

    TestUserDefault.intTest = TestResult.intValue
    XCTAssert(true, "test set \(TestUserDefault.intTest.debugDescription) ok")

    TestUserDefault.floatTest = TestResult.floatValue
    XCTAssert(true, "test set \(TestUserDefault.floatTest.debugDescription) ok")

    TestUserDefault.doubleTest = TestResult.doubleValue
    XCTAssert(true, "test set \(TestUserDefault.doubleTest.debugDescription) ok")

    TestUserDefault.dataTest = TestResult.dataValue
    XCTAssert(true, "test set \(TestUserDefault.dataTest.debugDescription) ok")

    TestUserDefault.dateTest = TestResult.dateValue
    XCTAssert(true, "test set \(TestUserDefault.dateTest.debugDescription) ok")

    TestUserDefault.boolArrayTest = TestResult.boolArrayValue
    XCTAssert(true, "test set \(TestUserDefault.boolArrayTest.debugDescription) ok")

    TestUserDefault.intArrayTest = TestResult.intArrayValue
    XCTAssert(true, "test set \(TestUserDefault.intArrayTest.debugDescription) ok")

    TestUserDefault.stringArrayTest = TestResult.stringArrayValue
    XCTAssert(true, "test set \(TestUserDefault.stringArrayTest.debugDescription) ok")

    TestUserDefault.dataArrayTest = TestResult.dataArrayValue
    XCTAssert(true, "test set \(TestUserDefault.dataArrayTest.debugDescription) ok")

    TestUserDefault.dictIntTest = TestResult.dictIntValue
    XCTAssert(true, "test set \(TestUserDefault.dictIntTest.debugDescription) ok")

    TestUserDefault.dictStringTest = TestResult.dictStringValue
    XCTAssert(true, "test set \(TestUserDefault.dictStringTest.debugDescription) ok")

    TestUserDefault.dictDateTest = TestResult.dictDateValue
    XCTAssert(true, "test set \(TestUserDefault.dictDateTest.debugDescription) ok")

    TestUserDefault.dictBoolTest = TestResult.dictBoolValue
    XCTAssert(true, "test set \(TestUserDefault.dictBoolTest.debugDescription) ok")

//    TestUserDefault.dicArrayTest = TestResult.dictArrayValue
//    XCTAssert(true, "test set \(TestUserDefault.dicArrayTest.debugDescription) ok")
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testGetObjectValue() {
    if let value = TestUserDefault.objectTest {
      return XCTAssert(value as! NSObject == TestResult.objectValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault objectTest failure")
  }

  func testGetStringValue() {
    if let value = TestUserDefault.stringTest {
      return XCTAssert(value == TestResult.stringValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault stringTest failure")
  }

  func testGetBoolValue() {
    if let value = TestUserDefault.boolTest {
      return XCTAssert(value == TestResult.boolValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault boolTest failure")
  }

  func testGetIntValue() {
    if let value = TestUserDefault.intTest {
      return XCTAssert(value == TestResult.intValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault intTest failure")
  }

  func testGetFloatArr() {
    if let value = TestUserDefault.floatTest {
      return XCTAssert(value == TestResult.floatValue, "test get \(value)ok")
    }
    XCTAssert(false, "test get TestUserDefault floatTest failure")
  }

  func testGetDoubleValue() {
    if let value = TestUserDefault.doubleTest {
      return XCTAssert(value == TestResult.doubleValue, "test get \(value)ok")
    }
    XCTAssert(false, "test get TestUserDefault doubleTest failure")
  }

  func testGetDataValue() {
    if let value = TestUserDefault.dataTest {
      return XCTAssert(value == TestResult.dataValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dataTest failure")
  }

  func testGetDateValue() {
    if let value = TestUserDefault.dateTest {
      return XCTAssert(value == TestResult.dateValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dateTest failure")
  }

  func testGetIntArrayValue() {
    if let value = TestUserDefault.intArrayTest {
      return XCTAssert(value == TestResult.intArrayValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault intArrayTest failure")
  }

  func testGetStringArrValue() {
    if let value = TestUserDefault.stringArrayTest {
      return XCTAssert(value == TestResult.stringArrayValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault stringArrayTest failure")
  }

  func testGetDataArrValue() {
    if let value = TestUserDefault.dataArrayTest {
      return XCTAssert(value == TestResult.dataArrayValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dataArrayTest failure")
  }

  func testGetdictIntValue() {
    if let value = TestUserDefault.dictIntTest {
      return XCTAssert(value == TestResult.dictIntValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dictIntTest failure")
  }

  func testGetdictStringValue() {
    if let value = TestUserDefault.dictStringTest {
      return XCTAssert(value == TestResult.dictStringValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dictStringTest failure")
  }

  func testGetdictDateValue() {
    if let value = TestUserDefault.dictDateTest {
      return XCTAssert(value == TestResult.dictDateValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dictDateTest failure")
  }

  func testGetdictBoolValue() {
    if let value = TestUserDefault.dictBoolTest {
      return XCTAssert(value == TestResult.dictBoolValue, "test get \(value) ok")
    }
    XCTAssert(false, "test get TestUserDefault dictBoolTest failure")
  }

//  func testGetdictArrayValue() {
//    if let value = TestUserDefault.dicArrayTest {
//      return XCTAssert(value == TestResult.dictArrayValue, "test get \(value) ok")
//    }
//    XCTAssert(false, "test get TestUserDefault dicArrayTest failure")
//  }
}

