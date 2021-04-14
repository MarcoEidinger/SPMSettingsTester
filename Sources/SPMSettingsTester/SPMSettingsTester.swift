public struct SPMSettingsTester {
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
