module 0x42::network {
    use std::debug;
    // use std::vector;

    struct Individuals has key, drop, store {
        name: vector<u8>,
        age: u8
    }

   struct Person has key, drop , store {
     people: vector<u8>,
     people2: u8
   }

   public fun initPerson(personInit: vector<u8>, personInit2: u8): Person {
    let personGan = Person{
        people: personInit,
        people2: personInit2
    };
    return personGan
   }

   public fun setPerson(newPerson: Individuals): Individuals {
        let new_person = Individuals { name: newPerson.name, age: newPerson.age};
        debug::print(&new_person);
        return new_person
   }


    #[test]
    fun set_age() {
        let ayo = Individuals {
            name: b"Bola",
            age: 20
        };
        let create = setPerson(ayo);
        debug::print(&create.age);
        assert!(create.age == 20, 00);  
        let crPerson = initPerson(b"bolu", 40);
        debug::print(&crPerson.people2);      
    }
}