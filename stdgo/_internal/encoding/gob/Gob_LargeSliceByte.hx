package stdgo._internal.encoding.gob;
@:structInit class LargeSliceByte {
    public var s : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?s:stdgo.Slice<stdgo.GoUInt8>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceByte(s);
    }
}
