module 0x42::network {
    use std::debug;
    use std::vector;

    struct People has key, drop, store, copy {
        peopleData: vector<Individuals>
    }

    struct Individuals has key, drop, store, copy {
        name: vector<u8>,
        age: u8
    }

    struct Info has drop {
        name: vector<u8>,
        owner: vector<u8>
    }

    public fun getInfoDetail(): Info {

        let sisFirstInfo = 0x42::sisFirst::getInfo();
        
        let infos = Info {
            name: b"Caviar",
            owner: sisFirstInfo
        };
        return infos
    }

    public fun regPeople(detail: Individuals, peopleDetail: &mut People): Individuals {
        let regPeopleDetail = Individuals {
            name: detail.name,
            age: detail.age
        };

        addPeople(regPeopleDetail, peopleDetail);
        debug::print(&regPeopleDetail);
        return regPeopleDetail
    }

    fun addPeople(_detail: Individuals, _peopleDetail: &mut People) {
        vector::push_back(&mut _peopleDetail.peopleData, _detail);
    }

    public fun incAge(_details:&mut Individuals, amt: u8):&mut Individuals {
        _details.age = _details.age + amt;
        debug::print(_details);
        return _details
    }

    // #[test] 
    // fun setPeople() {
    //     let Ayo = Individuals {
    //         name: b"Ibrahim",
    //         age: 20
    //     }
    // }
}