package stdgo;

class Chan<T> {
    var data:T = null;
    public function new() {

    }
    public inline function get():T {
        return data;
    }
    public inline function send(value:T) {
        data = value;
    }
}