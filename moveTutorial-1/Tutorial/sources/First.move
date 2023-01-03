module 0x42::network {
    use std::debug;

    struct Person has drop {
        age: u8
    }

    public fun setNum(new_num: u8): u8 {
        let num;
        num = new_num;
        debug::print(&num);
        num
    }

    public fun setAge(new_age: u8): u8 {
        let person = Person { age: new_age};
        debug::print(&person.age);
        person.age
    }

    #[test]
    fun set_age() {
        setAge(20);
        setNum(15);
    }
}