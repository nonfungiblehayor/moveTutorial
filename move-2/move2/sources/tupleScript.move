script {
    use 0x42::Tuple;
    use std::debug; 

    fun getVal() {
        let (x1, x2, x3) = Tuple::getValues();
        let oddValue = Tuple::oddVal(6);
        debug::print(&oddValue);
        debug::print(&x1);
        debug::print(&x2);
        debug::print(&x3);
    }

}