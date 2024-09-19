package stdgo._internal.encoding.gob;
@:structInit class LargeSliceInt8 {
    public var s : stdgo.Slice<stdgo.GoInt8> = (null : stdgo.Slice<stdgo.GoInt8>);
    public function new(?s:stdgo.Slice<stdgo.GoInt8>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceInt8(s);
    }
}
