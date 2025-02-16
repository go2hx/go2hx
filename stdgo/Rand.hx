package stdgo;
class Source_static_extension {
    static public function seed(t:stdgo._internal.math.rand.Rand_source.Source, _seed:haxe.Int64):Void {
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_source_static_extension.Source_static_extension.seed(t, _seed);
    }
    static public function int63(t:stdgo._internal.math.rand.Rand_source.Source):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_source_static_extension.Source_static_extension.int63(t);
    }
}
@:forward abstract Source(stdgo._internal.math.rand.Rand_source.Source) from stdgo._internal.math.rand.Rand_source.Source to stdgo._internal.math.rand.Rand_source.Source {
    @:from
    static function fromHaxeInterface(x:{ function int63():haxe.Int64; function seed(_seed:haxe.Int64):Void; }):Source {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Source = { int63 : () -> x.int63(), seed : _0 -> x.seed(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Source64_static_extension {
    static public function uint64(t:stdgo._internal.math.rand.Rand_source64.Source64):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_source64_static_extension.Source64_static_extension.uint64(t);
    }
}
@:forward abstract Source64(stdgo._internal.math.rand.Rand_source64.Source64) from stdgo._internal.math.rand.Rand_source64.Source64 to stdgo._internal.math.rand.Rand_source64.Source64 {
    @:from
    static function fromHaxeInterface(x:{ function uint64():haxe.UInt64; }):Source64 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Source64 = { uint64 : () -> x.uint64(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.math.rand.Rand.Rand_static_extension) abstract Rand_(stdgo._internal.math.rand.Rand_rand.Rand) from stdgo._internal.math.rand.Rand_rand.Rand to stdgo._internal.math.rand.Rand_rand.Rand {
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
    public function new(?_src:Source, ?_s64:Source64, ?_readVal:haxe.Int64, ?_readPos:StdTypes.Int) this = new stdgo._internal.math.rand.Rand_rand.Rand(_src, _s64, (_readVal : stdgo.GoInt64), (_readPos : stdgo.GoInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.T_fastSource_static_extension) @:dox(hide) abstract T_fastSource(stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource) from stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource to stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex) this = new stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource(_mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.T_lockedSource_static_extension) @:dox(hide) abstract T_lockedSource(stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource) from stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource to stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource {
    public var _lk(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__lk():stdgo._internal.sync.Sync_mutex.Mutex return this._lk;
    function set__lk(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._lk = v;
        return v;
    }
    public var _s(get, set) : T_rngSource;
    function get__s():T_rngSource return this._s;
    function set__s(v:T_rngSource):T_rngSource {
        this._s = (v : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
        return v;
    }
    public function new(?_lk:stdgo._internal.sync.Sync_mutex.Mutex, ?_s:T_rngSource) this = new stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource(_lk, (_s : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.T_rngSource_static_extension) @:dox(hide) abstract T_rngSource(stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource) from stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource to stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource {
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
    public function new(?_tap:StdTypes.Int, ?_feed:StdTypes.Int, ?_vec:haxe.ds.Vector<haxe.Int64>) this = new stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource((_tap : stdgo.GoInt), (_feed : stdgo.GoInt), ([for (i in _vec) (i : stdgo.GoInt64)] : stdgo.GoArray<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.Zipf_static_extension) abstract Zipf(stdgo._internal.math.rand.Rand_zipf.Zipf) from stdgo._internal.math.rand.Rand_zipf.Zipf to stdgo._internal.math.rand.Rand_zipf.Zipf {
    public var _r(get, set) : Rand_;
    function get__r():Rand_ return this._r;
    function set__r(v:Rand_):Rand_ {
        this._r = (v : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return v;
    }
    public var _imax(get, set) : StdTypes.Float;
    function get__imax():StdTypes.Float return this._imax;
    function set__imax(v:StdTypes.Float):StdTypes.Float {
        this._imax = (v : stdgo.GoFloat64);
        return v;
    }
    public var _v(get, set) : StdTypes.Float;
    function get__v():StdTypes.Float return this._v;
    function set__v(v:StdTypes.Float):StdTypes.Float {
        this._v = (v : stdgo.GoFloat64);
        return v;
    }
    public var _q(get, set) : StdTypes.Float;
    function get__q():StdTypes.Float return this._q;
    function set__q(v:StdTypes.Float):StdTypes.Float {
        this._q = (v : stdgo.GoFloat64);
        return v;
    }
    public var _s(get, set) : StdTypes.Float;
    function get__s():StdTypes.Float return this._s;
    function set__s(v:StdTypes.Float):StdTypes.Float {
        this._s = (v : stdgo.GoFloat64);
        return v;
    }
    public var _oneminusQ(get, set) : StdTypes.Float;
    function get__oneminusQ():StdTypes.Float return this._oneminusQ;
    function set__oneminusQ(v:StdTypes.Float):StdTypes.Float {
        this._oneminusQ = (v : stdgo.GoFloat64);
        return v;
    }
    public var _oneminusQinv(get, set) : StdTypes.Float;
    function get__oneminusQinv():StdTypes.Float return this._oneminusQinv;
    function set__oneminusQinv(v:StdTypes.Float):StdTypes.Float {
        this._oneminusQinv = (v : stdgo.GoFloat64);
        return v;
    }
    public var _hxm(get, set) : StdTypes.Float;
    function get__hxm():StdTypes.Float return this._hxm;
    function set__hxm(v:StdTypes.Float):StdTypes.Float {
        this._hxm = (v : stdgo.GoFloat64);
        return v;
    }
    public var _hx0minusHxm(get, set) : StdTypes.Float;
    function get__hx0minusHxm():StdTypes.Float return this._hx0minusHxm;
    function set__hx0minusHxm(v:StdTypes.Float):StdTypes.Float {
        this._hx0minusHxm = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_r:Rand_, ?_imax:StdTypes.Float, ?_v:StdTypes.Float, ?_q:StdTypes.Float, ?_s:StdTypes.Float, ?_oneminusQ:StdTypes.Float, ?_oneminusQinv:StdTypes.Float, ?_hxm:StdTypes.Float, ?_hx0minusHxm:StdTypes.Float) this = new stdgo._internal.math.rand.Rand_zipf.Zipf((_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>), (_imax : stdgo.GoFloat64), (_v : stdgo.GoFloat64), (_q : stdgo.GoFloat64), (_s : stdgo.GoFloat64), (_oneminusQ : stdgo.GoFloat64), (_oneminusQinv : stdgo.GoFloat64), (_hxm : stdgo.GoFloat64), (_hx0minusHxm : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef RandPointer = stdgo._internal.math.rand.Rand_randpointer.RandPointer;
class Rand_static_extension {
    static public function read(_r:Rand_, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function shuffle(_r:Rand_, _n:StdTypes.Int, _swap:(StdTypes.Int, StdTypes.Int) -> Void):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        final _swap = _swap;
        stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.shuffle(_r, _n, _swap);
    }
    static public function perm(_r:Rand_, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.perm(_r, _n)) i];
    }
    static public function float32(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.float32(_r);
    }
    static public function float64(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.float64(_r);
    }
    static public function intn(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.intn(_r, _n);
    }
    static public function _int31n(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension._int31n(_r, _n);
    }
    static public function int31n(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.int31n(_r, _n);
    }
    static public function int63n(_r:Rand_, _n:haxe.Int64):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.int63n(_r, _n);
    }
    static public function int_(_r:Rand_):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.int_(_r);
    }
    static public function int31(_r:Rand_):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.int31(_r);
    }
    static public function uint64(_r:Rand_):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.uint64(_r);
    }
    static public function uint32(_r:Rand_):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.uint32(_r);
    }
    static public function int63(_r:Rand_):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.int63(_r);
    }
    static public function seed(_r:Rand_, _seed:haxe.Int64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.seed(_r, _seed);
    }
    static public function normFloat64(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.normFloat64(_r);
    }
    static public function expFloat64(_r:Rand_):StdTypes.Float {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return stdgo._internal.math.rand.Rand_rand_static_extension.Rand_static_extension.expFloat64(_r);
    }
}
@:dox(hide) typedef T_fastSourcePointer = stdgo._internal.math.rand.Rand_t_fastsourcepointer.T_fastSourcePointer;
@:dox(hide) class T_fastSource_static_extension {
    static public function _read(_fs:T_fastSource, _p:Array<std.UInt>, _readVal:stdgo.Pointer<haxe.Int64>, _readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension._read(_fs, _p, _readVal, _readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_:T_fastSource):haxe.UInt64 {
        final _ = (_ : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>);
        return stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension.uint64(_);
    }
    static public function seed(_:T_fastSource, _0:haxe.Int64):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>);
        final _0 = (_0 : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension.seed(_, _0);
    }
    static public function int63(_:T_fastSource):haxe.Int64 {
        final _ = (_ : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>);
        return stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension.int63(_);
    }
}
@:dox(hide) typedef T_lockedSourcePointer = stdgo._internal.math.rand.Rand_t_lockedsourcepointer.T_lockedSourcePointer;
@:dox(hide) class T_lockedSource_static_extension {
    static public function _read(_r:T_lockedSource, _p:Array<std.UInt>, _readVal:stdgo.Pointer<haxe.Int64>, _readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension._read(_r, _p, _readVal, _readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _seed(_r:T_lockedSource, _seed:haxe.Int64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension._seed(_r, _seed);
    }
    static public function _seedPos(_r:T_lockedSource, _seed:haxe.Int64, _readPos:stdgo.Pointer<StdTypes.Int>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension._seedPos(_r, _seed, _readPos);
    }
    static public function seed(_r:T_lockedSource, _seed:haxe.Int64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension.seed(_r, _seed);
    }
    static public function uint64(_r:T_lockedSource):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>);
        return stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension.uint64(_r);
    }
    static public function int63(_r:T_lockedSource):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>);
        return stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension.int63(_r);
    }
}
@:dox(hide) typedef T_rngSourcePointer = stdgo._internal.math.rand.Rand_t_rngsourcepointer.T_rngSourcePointer;
@:dox(hide) class T_rngSource_static_extension {
    static public function uint64(_rng:T_rngSource):haxe.UInt64 {
        final _rng = (_rng : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
        return stdgo._internal.math.rand.Rand_t_rngsource_static_extension.T_rngSource_static_extension.uint64(_rng);
    }
    static public function int63(_rng:T_rngSource):haxe.Int64 {
        final _rng = (_rng : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
        return stdgo._internal.math.rand.Rand_t_rngsource_static_extension.T_rngSource_static_extension.int63(_rng);
    }
    static public function seed(_rng:T_rngSource, _seed:haxe.Int64):Void {
        final _rng = (_rng : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_t_rngsource_static_extension.T_rngSource_static_extension.seed(_rng, _seed);
    }
}
typedef ZipfPointer = stdgo._internal.math.rand.Rand_zipfpointer.ZipfPointer;
class Zipf_static_extension {
    static public function uint64(_z:Zipf):haxe.UInt64 {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>);
        return stdgo._internal.math.rand.Rand_zipf_static_extension.Zipf_static_extension.uint64(_z);
    }
    static public function _hinv(_z:Zipf, _x:StdTypes.Float):StdTypes.Float {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>);
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.math.rand.Rand_zipf_static_extension.Zipf_static_extension._hinv(_z, _x);
    }
    static public function _h(_z:Zipf, _x:StdTypes.Float):StdTypes.Float {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>);
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.math.rand.Rand_zipf_static_extension.Zipf_static_extension._h(_z, _x);
    }
}
/**
    * Package rand implements pseudo-random number generators suitable for tasks
    * such as simulation, but it should not be used for security-sensitive work.
    * 
    * Random numbers are generated by a [Source], usually wrapped in a [Rand].
    * Both types should be used by a single goroutine at a time: sharing among
    * multiple goroutines requires some kind of synchronization.
    * 
    * Top-level functions, such as [Float64] and [Int],
    * are safe for concurrent use by multiple goroutines.
    * 
    * This package's outputs might be easily predictable regardless of how it's
    * seeded. For random numbers suitable for security-sensitive work, see the
    * crypto/rand package.
**/
class Rand {
    static public inline function int31nForTest(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.math.rand.Rand_int31nfortest.int31nForTest(_r, _n);
    }
    static public inline function getNormalDistributionParameters():stdgo.Tuple.Tuple4<StdTypes.Float, haxe.ds.Vector<std.UInt>, haxe.ds.Vector<StdTypes.Float>, haxe.ds.Vector<StdTypes.Float>> {
        return {
            final obj = stdgo._internal.math.rand.Rand_getnormaldistributionparameters.getNormalDistributionParameters();
            { _0 : obj._0, _1 : haxe.ds.Vector.fromArrayCopy([for (i in obj._1) i]), _2 : haxe.ds.Vector.fromArrayCopy([for (i in obj._2) i]), _3 : haxe.ds.Vector.fromArrayCopy([for (i in obj._3) i]) };
        };
    }
    static public inline function getExponentialDistributionParameters():stdgo.Tuple.Tuple4<StdTypes.Float, haxe.ds.Vector<std.UInt>, haxe.ds.Vector<StdTypes.Float>, haxe.ds.Vector<StdTypes.Float>> {
        return {
            final obj = stdgo._internal.math.rand.Rand_getexponentialdistributionparameters.getExponentialDistributionParameters();
            { _0 : obj._0, _1 : haxe.ds.Vector.fromArrayCopy([for (i in obj._1) i]), _2 : haxe.ds.Vector.fromArrayCopy([for (i in obj._2) i]), _3 : haxe.ds.Vector.fromArrayCopy([for (i in obj._3) i]) };
        };
    }
    /**
        * NewSource returns a new pseudo-random Source seeded with the given value.
        * Unlike the default Source used by top-level functions, this source is not
        * safe for concurrent use by multiple goroutines.
        * The returned Source implements Source64.
    **/
    static public inline function newSource(_seed:haxe.Int64):Source {
        final _seed = (_seed : stdgo.GoInt64);
        return stdgo._internal.math.rand.Rand_newsource.newSource(_seed);
    }
    /**
        * New returns a new Rand that uses random values from src
        * to generate other random values.
    **/
    static public inline function new_(_src:Source):Rand_ {
        return stdgo._internal.math.rand.Rand_new_.new_(_src);
    }
    /**
        * Seed uses the provided seed value to initialize the default Source to a
        * deterministic state. Seed values that have the same remainder when
        * divided by 2³¹-1 generate the same pseudo-random sequence.
        * Seed, unlike the Rand.Seed method, is safe for concurrent use.
        * 
        * If Seed is not called, the generator is seeded randomly at program startup.
        * 
        * Prior to Go 1.20, the generator was seeded like Seed(1) at program startup.
        * To force the old behavior, call Seed(1) at program startup.
        * Alternately, set GODEBUG=randautoseed=0 in the environment
        * before making any calls to functions in this package.
        * 
        * Deprecated: As of Go 1.20 there is no reason to call Seed with
        * a random value. Programs that call Seed with a known value to get
        * a specific sequence of results should use New(NewSource(seed)) to
        * obtain a local random generator.
    **/
    static public inline function seed(_seed:haxe.Int64):Void {
        final _seed = (_seed : stdgo.GoInt64);
        stdgo._internal.math.rand.Rand_seed.seed(_seed);
    }
    /**
        * Int63 returns a non-negative pseudo-random 63-bit integer as an int64
        * from the default Source.
    **/
    static public inline function int63():haxe.Int64 {
        return stdgo._internal.math.rand.Rand_int63.int63();
    }
    /**
        * Uint32 returns a pseudo-random 32-bit value as a uint32
        * from the default Source.
    **/
    static public inline function uint32():std.UInt {
        return stdgo._internal.math.rand.Rand_uint32.uint32();
    }
    /**
        * Uint64 returns a pseudo-random 64-bit value as a uint64
        * from the default Source.
    **/
    static public inline function uint64():haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_uint64.uint64();
    }
    /**
        * Int31 returns a non-negative pseudo-random 31-bit integer as an int32
        * from the default Source.
    **/
    static public inline function int31():StdTypes.Int {
        return stdgo._internal.math.rand.Rand_int31.int31();
    }
    /**
        * Int returns a non-negative pseudo-random int from the default Source.
    **/
    static public inline function int_():StdTypes.Int {
        return stdgo._internal.math.rand.Rand_int_.int_();
    }
    /**
        * Int63n returns, as an int64, a non-negative pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function int63n(_n:haxe.Int64):haxe.Int64 {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.math.rand.Rand_int63n.int63n(_n);
    }
    /**
        * Int31n returns, as an int32, a non-negative pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function int31n(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.math.rand.Rand_int31n.int31n(_n);
    }
    /**
        * Intn returns, as an int, a non-negative pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function intn(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.rand.Rand_intn.intn(_n);
    }
    /**
        * Float64 returns, as a float64, a pseudo-random number in the half-open interval [0.0,1.0)
        * from the default Source.
    **/
    static public inline function float64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_float64.float64();
    }
    /**
        * Float32 returns, as a float32, a pseudo-random number in the half-open interval [0.0,1.0)
        * from the default Source.
    **/
    static public inline function float32():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_float32.float32();
    }
    /**
        * Perm returns, as a slice of n ints, a pseudo-random permutation of the integers
        * in the half-open interval [0,n) from the default Source.
    **/
    static public inline function perm(_n:StdTypes.Int):Array<StdTypes.Int> {
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.math.rand.Rand_perm.perm(_n)) i];
    }
    /**
        * Shuffle pseudo-randomizes the order of elements using the default Source.
        * n is the number of elements. Shuffle panics if n < 0.
        * swap swaps the elements with indexes i and j.
    **/
    static public inline function shuffle(_n:StdTypes.Int, _swap:(StdTypes.Int, StdTypes.Int) -> Void):Void {
        final _n = (_n : stdgo.GoInt);
        final _swap = _swap;
        stdgo._internal.math.rand.Rand_shuffle.shuffle(_n, _swap);
    }
    /**
        * Read generates len(p) random bytes from the default Source and
        * writes them into p. It always returns len(p) and a nil error.
        * Read, unlike the Rand.Read method, is safe for concurrent use.
        * 
        * Deprecated: For almost all use cases, crypto/rand.Read is more appropriate.
    **/
    static public inline function read(_p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_read.read(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NormFloat64 returns a normally distributed float64 in the range
        * [-math.MaxFloat64, +math.MaxFloat64] with
        * standard normal distribution (mean = 0, stddev = 1)
        * from the default Source.
        * To produce a different normal distribution, callers can
        * adjust the output using:
        * 
        * 	sample = NormFloat64() * desiredStdDev + desiredMean
    **/
    static public inline function normFloat64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_normfloat64.normFloat64();
    }
    /**
        * ExpFloat64 returns an exponentially distributed float64 in the range
        * (0, +math.MaxFloat64] with an exponential distribution whose rate parameter
        * (lambda) is 1 and whose mean is 1/lambda (1) from the default Source.
        * To produce a distribution with a different rate parameter,
        * callers can adjust the output using:
        * 
        * 	sample = ExpFloat64() / desiredRateParameter
    **/
    static public inline function expFloat64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_expfloat64.expFloat64();
    }
    /**
        * NewZipf returns a Zipf variate generator.
        * The generator generates values k ∈ [0, imax]
        * such that P(k) is proportional to (v + k) ** (-s).
        * Requirements: s > 1 and v >= 1.
    **/
    static public inline function newZipf(_r:Rand_, _s:StdTypes.Float, _v:StdTypes.Float, _imax:haxe.UInt64):Zipf {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _s = (_s : stdgo.GoFloat64);
        final _v = (_v : stdgo.GoFloat64);
        final _imax = (_imax : stdgo.GoUInt64);
        return stdgo._internal.math.rand.Rand_newzipf.newZipf(_r, _s, _v, _imax);
    }
}
