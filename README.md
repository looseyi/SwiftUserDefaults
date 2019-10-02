## SwiftUserDefault



Now, support Swift 5.1, and you can use by [PropertyWrapper](https://forums.swift.org/t/pitch-3-property-wrappers-formerly-known-as-property-delegates/24961) 

**SwiftUserDefault**, which is just wrap NSUserDefaults, make you easy to use.



```swift
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
}
```

In your project, use can declear your store type, like above, *UserDefaultsItem* would synchronize it once you set newValue, if newValue is nil, the key's value would be remove from *NSUserDefaults*.

>  set value
>
>  ```
>  TestUserDefault.stringTest = "I'am test"
>  ```
>
>  get value
>
>  ```
>  let value = TestUserDefault.stringTest // will be  optional value "I'am test"
>  ```



#### Install

By CocoaPods use:

> pod SwiftUserDefault
