package stdgo._internal.internal.cpu;
@:structInit class CacheLinePad {
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
    public function new(?__1:stdgo.GoArray<stdgo.GoUInt8>) {
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CacheLinePad(__1);
    }
}
