package stdgo._internal.encoding.gob;
@:structInit class LargeSliceStruct {
    public var s : stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>);
    public function new(?s:stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceStruct(s);
    }
}