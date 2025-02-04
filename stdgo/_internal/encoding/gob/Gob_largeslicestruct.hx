package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_largeslicestruct_static_extension.LargeSliceStruct_static_extension) class LargeSliceStruct {
    public var s : stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair>);
    public function new(?s:stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceStruct(s);
    }
}
