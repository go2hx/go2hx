package stdgo._internal.encoding.json;
@:structInit class Ambig {
    @:tag("`json:\"HELLO\"`")
    public var first : stdgo.GoInt = 0;
    @:tag("`json:\"Hello\"`")
    public var second : stdgo.GoInt = 0;
    public function new(?first:stdgo.GoInt, ?second:stdgo.GoInt) {
        if (first != null) this.first = first;
        if (second != null) this.second = second;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ambig(first, second);
    }
}
