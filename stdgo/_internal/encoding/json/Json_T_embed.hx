package stdgo._internal.encoding.json;
@:structInit class T_embed {
    public var q : stdgo.GoInt = 0;
    public function new(?q:stdgo.GoInt) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_embed(q);
    }
}
