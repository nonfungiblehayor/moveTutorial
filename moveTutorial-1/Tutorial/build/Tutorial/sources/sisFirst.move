module 0x42::sisFirst {

    friend 0x42::network;

    public(friend) fun getInfo(): vector<u8> {
        return b"nonfungibleayo"        
    }
}