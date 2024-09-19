package stdgo._internal.encoding.gob;
@:structInit class T_emptyStruct {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyStruct();
    }
}
