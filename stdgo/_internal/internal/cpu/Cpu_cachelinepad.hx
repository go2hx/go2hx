package stdgo._internal.internal.cpu;
@:structInit @:using(stdgo._internal.internal.cpu.Cpu_cachelinepad_static_extension.CacheLinePad_static_extension) class CacheLinePad {
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public function new(?__1:stdgo.GoArray<stdgo.GoUInt8>) {
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CacheLinePad(__1);
    }
}
