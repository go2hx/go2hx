package stdgo;

abstract Chan<T>(ChanData<T>) {
    public function new() {
        this = new ChanData();
    }
}

class ChanData<T> {
    public function new() {

    }
}