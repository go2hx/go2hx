package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.PB_static_extension) abstract PB(stdgo._internal.testing.Testing_PB.PB) from stdgo._internal.testing.Testing_PB.PB to stdgo._internal.testing.Testing_PB.PB {
    public var _globalN(get, set) : stdgo.Pointer<haxe.UInt64>;
    function get__globalN():stdgo.Pointer<haxe.UInt64> return this._globalN;
    function set__globalN(v:stdgo.Pointer<haxe.UInt64>):stdgo.Pointer<haxe.UInt64> {
        this._globalN = v;
        return v;
    }
    public var _grain(get, set) : haxe.UInt64;
    function get__grain():haxe.UInt64 return this._grain;
    function set__grain(v:haxe.UInt64):haxe.UInt64 {
        this._grain = (v : stdgo.GoUInt64);
        return v;
    }
    public var _cache(get, set) : haxe.UInt64;
    function get__cache():haxe.UInt64 return this._cache;
    function set__cache(v:haxe.UInt64):haxe.UInt64 {
        this._cache = (v : stdgo.GoUInt64);
        return v;
    }
    public var _bN(get, set) : haxe.UInt64;
    function get__bN():haxe.UInt64 return this._bN;
    function set__bN(v:haxe.UInt64):haxe.UInt64 {
        this._bN = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_globalN:stdgo.Pointer<haxe.UInt64>, ?_grain:haxe.UInt64, ?_cache:haxe.UInt64, ?_bN:haxe.UInt64) this = new stdgo._internal.testing.Testing_PB.PB(_globalN, (_grain : stdgo.GoUInt64), (_cache : stdgo.GoUInt64), (_bN : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
