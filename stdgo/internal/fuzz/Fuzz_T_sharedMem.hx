package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_sharedMem_static_extension) abstract T_sharedMem(stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem) from stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem to stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem {
    public var _f(get, set) : stdgo._internal.os.Os_File.File;
    function get__f():stdgo._internal.os.Os_File.File return this._f;
    function set__f(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._f = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public var _region(get, set) : Array<std.UInt>;
    function get__region():Array<std.UInt> return [for (i in this._region) i];
    function set__region(v:Array<std.UInt>):Array<std.UInt> {
        this._region = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _removeOnClose(get, set) : Bool;
    function get__removeOnClose():Bool return this._removeOnClose;
    function set__removeOnClose(v:Bool):Bool {
        this._removeOnClose = v;
        return v;
    }
    public var _sys(get, set) : T_sharedMemSys;
    function get__sys():T_sharedMemSys return this._sys;
    function set__sys(v:T_sharedMemSys):T_sharedMemSys {
        this._sys = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_File.File, ?_region:Array<std.UInt>, ?_removeOnClose:Bool, ?_sys:T_sharedMemSys) this = new stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem((_f : stdgo.Ref<stdgo._internal.os.Os_File.File>), ([for (i in _region) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _removeOnClose, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
