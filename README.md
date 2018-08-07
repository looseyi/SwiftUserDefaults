Now, support Swift 4.2

**SwiftUserDefault**, which is just wrap NSUserDefaults, make you easy to use.

```swift
struct TestUserDefault {
    static let stringTest = UserDefaultsItem<String>("stringTest")
    static let boolTest = UserDefaultsItem<Bool>("boolTest")
    static let intTest = UserDefaultsItem<Int>("intTest")
    static let floatTest = UserDefaultsItem<Float>("floatTest")
    static let doubleTest = UserDefaultsItem<Double>("doubleTest")
    static let dataTest = UserDefaultsItem<Data>("dataTest")
    static let dateTest = UserDefaultsItem<Date>("dateTest")
    static let intArrayTest = UserDefaultsItem<[Int]>("intArrayTest")
    static let stringArrayTest = UserDefaultsItem<[String]>("stringArrayTest")
    static let dataArrayTest = UserDefaultsItem<[Data]>("dataArrayTest")
    static let dictionaryTest = UserDefaultsItem<[String : Int]>("dictionary<String : Int>Testionary")
}
```

In your project, use can declear your store type, like above, *UserDefaultsItem* would synchronize it once you set newValue, if newValue is nil, the key's value would be remove from *NSUserDefaults*.

>  set value
>
>  ```
>  TestUserDefault.stringTest.value = "I'am test"
>  ```
>
>  get value
>
>  ```
>  let value = TestUserDefault.stringTest.value // will be "I'am test"
>  ```



#### Install

> pod SwiftUserDefault
