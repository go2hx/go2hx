package stdgo.hash.maphash;
@:structInit @:using(stdgo.hash.maphash.Maphash.Seed_static_extension) abstract Seed(stdgo._internal.hash.maphash.Maphash_Seed.Seed) from stdgo._internal.hash.maphash.Maphash_Seed.Seed to stdgo._internal.hash.maphash.Maphash_Seed.Seed {
    public var _s(get, set) : haxe.UInt64;
    function get__s():haxe.UInt64 return this._s;
    function set__s(v:haxe.UInt64):haxe.UInt64 {
        this._s = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_s:haxe.UInt64) this = new stdgo._internal.hash.maphash.Maphash_Seed.Seed((_s : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
