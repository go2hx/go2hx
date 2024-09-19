package stdgo._internal.encoding.gob;
@:structInit class LargeSliceString {
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?s:stdgo.Slice<stdgo.GoString>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceString(s);
    }
}
