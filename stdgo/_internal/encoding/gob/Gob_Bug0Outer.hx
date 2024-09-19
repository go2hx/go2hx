package stdgo._internal.encoding.gob;
@:structInit class Bug0Outer {
    public var bug0Field : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?bug0Field:stdgo.AnyInterface) {
        if (bug0Field != null) this.bug0Field = bug0Field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug0Outer(bug0Field);
    }
}
