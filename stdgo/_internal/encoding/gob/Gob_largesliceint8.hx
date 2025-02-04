package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_largesliceint8_static_extension.LargeSliceInt8_static_extension) class LargeSliceInt8 {
    public var s : stdgo.Slice<stdgo.GoInt8> = (null : stdgo.Slice<stdgo.GoInt8>);
    public function new(?s:stdgo.Slice<stdgo.GoInt8>) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LargeSliceInt8(s);
    }
}
