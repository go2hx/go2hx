package stdgo._internal.encoding.gob;
@:structInit class Z {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Z();
    }
}
