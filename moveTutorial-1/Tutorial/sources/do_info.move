script {
    use 0x42::First;
    use std::debug;

    fun workInfo() {
    let infoDetail = First::getInfoDetail();
    debug::print(&infoDetail)
    }
}