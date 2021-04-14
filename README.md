# SPMSettingsTester

For testing the the use of `swiftSettings` and `cSettings` in a Package manifest and its implications when using preprocessor macros.

For example:

```swift
struct SPMSettingsTester {
    public static func sqliteHasCodec() -> Bool {
        #if SQLITE_HAS_CODEC
            print("has Codec")
            return true
        #else
            print("no Codec")
            return false
        #endif
    }
}
```

Static function should return true if [define(_:_:)](https://developer.apple.com/documentation/swift_packages/swiftsetting/3112769-define) was used to define hte compilitation condition

.target(
    name: "SPMSettingsTester",
    dependencies: [],
    swiftSettings: [
        .define("SQLITE_HAS_CODEC"),
    ]
),
