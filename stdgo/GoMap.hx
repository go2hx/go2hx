package stdgo;

abstract GoMap<K,V>(Map<K,V>) {
    var length(get, never):Int;
    private function get_length():Int {
        return Lambda.count(this);
    }
    public function cap():Int {
        return length();
    }
    public inline function new(length:Int=0,cap:Int=0) {
        this = new Map<K,V>();
    }
}