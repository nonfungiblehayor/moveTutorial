script {
    use 0x42::network;
    use std::debug;

    fun workInfo() {
    let infoDetail = network::getInfoDetail();
    debug::print(&infoDetail)
    }
}