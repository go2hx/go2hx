package stdgo.math.rand;
@:structInit @:using(stdgo.math.rand.Rand.T_rngSource_static_extension) abstract T_rngSource(stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource) from stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource to stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource {
    public var _tap(get, set) : StdTypes.Int;
    function get__tap():StdTypes.Int return this._tap;
    function set__tap(v:StdTypes.Int):StdTypes.Int {
        this._tap = (v : stdgo.GoInt);
        return v;
    }
    public var _feed(get, set) : StdTypes.Int;
    function get__feed():StdTypes.Int return this._feed;
    function set__feed(v:StdTypes.Int):StdTypes.Int {
        this._feed = (v : stdgo.GoInt);
        return v;
    }
    public var _vec(get, set) : haxe.ds.Vector<haxe.Int64>;
    function get__vec():haxe.ds.Vector<haxe.Int64> return haxe.ds.Vector.fromArrayCopy([for (i in this._vec) i]);
    function set__vec(v:haxe.ds.Vector<haxe.Int64>):haxe.ds.Vector<haxe.Int64> {
        this._vec = ([for (i in v) (i : stdgo.GoInt64)] : stdgo.GoArray<stdgo.GoInt64>);
        return v;
    }
    public function new(?_tap:StdTypes.Int, ?_feed:StdTypes.Int, ?_vec:haxe.ds.Vector<haxe.Int64>) this = new stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource((_tap : stdgo.GoInt), (_feed : stdgo.GoInt), ([for (i in _vec) (i : stdgo.GoInt64)] : stdgo.GoArray<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
