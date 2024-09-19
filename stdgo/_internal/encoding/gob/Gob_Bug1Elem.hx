package stdgo._internal.encoding.gob;
@:structInit class Bug1Elem {
    public var name : stdgo.GoString = "";
    public var id : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?id:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug1Elem(name, id);
    }
}
