package stdgo._internal.encoding.xml;
@:structInit class Name {
    public var space : stdgo.GoString = "";
    public var local : stdgo.GoString = "";
    public function new(?space:stdgo.GoString, ?local:stdgo.GoString) {
        if (space != null) this.space = space;
        if (local != null) this.local = local;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(space, local);
    }
}