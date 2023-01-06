module 0x42::sisFirst {
    use 0x42::First;
    friend 0x42::First;

    public(friend) fun getInfo(): vector<u8> {
        return b"nonfungibleayo"        
    }
}