package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_sharedMemHeader_static_extension) abstract T_sharedMemHeader(stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader) from stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader to stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader {
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public var _valueLen(get, set) : StdTypes.Int;
    function get__valueLen():StdTypes.Int return this._valueLen;
    function set__valueLen(v:StdTypes.Int):StdTypes.Int {
        this._valueLen = (v : stdgo.GoInt);
        return v;
    }
    public var _randState(get, set) : haxe.UInt64;
    function get__randState():haxe.UInt64 return this._randState;
    function set__randState(v:haxe.UInt64):haxe.UInt64 {
        this._randState = (v : stdgo.GoUInt64);
        return v;
    }
    public var _randInc(get, set) : haxe.UInt64;
    function get__randInc():haxe.UInt64 return this._randInc;
    function set__randInc(v:haxe.UInt64):haxe.UInt64 {
        this._randInc = (v : stdgo.GoUInt64);
        return v;
    }
    public var _rawInMem(get, set) : Bool;
    function get__rawInMem():Bool return this._rawInMem;
    function set__rawInMem(v:Bool):Bool {
        this._rawInMem = v;
        return v;
    }
    public function new(?_count:haxe.Int64, ?_valueLen:StdTypes.Int, ?_randState:haxe.UInt64, ?_randInc:haxe.UInt64, ?_rawInMem:Bool) this = new stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader((_count : stdgo.GoInt64), (_valueLen : stdgo.GoInt), (_randState : stdgo.GoUInt64), (_randInc : stdgo.GoUInt64), _rawInMem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
