package stdgo.internal.cpu;
@:structInit @:using(stdgo.internal.cpu.Cpu.CacheLinePad_static_extension) abstract CacheLinePad(stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad) from stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad to stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad {
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad(([for (i in __1) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
