package stdgo.math.rand;
@:structInit @:using(stdgo.math.rand.Rand.Rand_static_extension) abstract Rand_(stdgo._internal.math.rand.Rand_Rand.Rand) from stdgo._internal.math.rand.Rand_Rand.Rand to stdgo._internal.math.rand.Rand_Rand.Rand {
    public var _src(get, set) : Source;
    function get__src():Source return this._src;
    function set__src(v:Source):Source {
        this._src = v;
        return v;
    }
    public var _s64(get, set) : Source64;
    function get__s64():Source64 return this._s64;
    function set__s64(v:Source64):Source64 {
        this._s64 = v;
        return v;
    }
    public var _readVal(get, set) : haxe.Int64;
    function get__readVal():haxe.Int64 return this._readVal;
    function set__readVal(v:haxe.Int64):haxe.Int64 {
        this._readVal = (v : stdgo.GoInt64);
        return v;
    }
    public var _readPos(get, set) : StdTypes.Int;
    function get__readPos():StdTypes.Int return this._readPos;
    function set__readPos(v:StdTypes.Int):StdTypes.Int {
        this._readPos = (v : stdgo.GoInt8);
        return v;
    }
    public function new(?_src:Source, ?_s64:Source64, ?_readVal:haxe.Int64, ?_readPos:StdTypes.Int) this = new stdgo._internal.math.rand.Rand_Rand.Rand(_src, _s64, (_readVal : stdgo.GoInt64), (_readPos : stdgo.GoInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
