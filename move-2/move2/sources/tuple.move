module 0x42::Tuple {
    
    public fun getValues(): (u8, vector<u8>, bool) {
        let x: u8 = 40;
        let name = b"nonfungibleayo";
        let boolVal = true;
        (x, name, boolVal)
    }

    public fun oddVal(num: u8): bool {
        assert!(num % 2 == 1, 0);
        return true
    }
}