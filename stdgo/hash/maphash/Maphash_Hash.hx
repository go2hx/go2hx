package stdgo.hash.maphash;
@:structInit @:using(stdgo.hash.maphash.Maphash.Hash_static_extension) abstract Hash(stdgo._internal.hash.maphash.Maphash_Hash.Hash) from stdgo._internal.hash.maphash.Maphash_Hash.Hash to stdgo._internal.hash.maphash.Maphash_Hash.Hash {
    public var __1(get, set) : haxe.ds.Vector<() -> Void>;
    function get___1():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) () -> i()]);
    function set___1(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _seed(get, set) : Seed;
    function get__seed():Seed return this._seed;
    function set__seed(v:Seed):Seed {
        this._seed = v;
        return v;
    }
    public var _state(get, set) : Seed;
    function get__state():Seed return this._state;
    function set__state(v:Seed):Seed {
        this._state = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<() -> Void>, ?_seed:Seed, ?_state:Seed, ?_buf:haxe.ds.Vector<std.UInt>, ?_n:StdTypes.Int) this = new stdgo._internal.hash.maphash.Maphash_Hash.Hash(([for (i in __1) i] : stdgo.GoArray<() -> Void>), _seed, _state, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_n : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
