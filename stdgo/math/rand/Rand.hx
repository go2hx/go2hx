package stdgo.math.rand;
class Source_static_extension {
    static public function seed(t:stdgo._internal.math.rand.Rand_Source.Source, _seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_Source_static_extension.Source_static_extension.seed(t, _seed);
    }
    static public function int63(t:stdgo._internal.math.rand.Rand_Source.Source):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_Source_static_extension.Source_static_extension.int63(t);
    }
}
typedef Source = stdgo._internal.math.rand.Rand_Source.Source;
class Source64_static_extension {
    static public function uint64(t:stdgo._internal.math.rand.Rand_Source64.Source64):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_Source64_static_extension.Source64_static_extension.uint64(t);
    }
}
typedef Source64 = stdgo._internal.math.rand.Rand_Source64.Source64;
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
        this._readVal = v;
        return v;
    }
    public var _readPos(get, set) : StdTypes.Int;
    function get__readPos():StdTypes.Int return this._readPos;
    function set__readPos(v:StdTypes.Int):StdTypes.Int {
        this._readPos = v;
        return v;
    }
    public function new(?_src:Source, ?_s64:Source64, ?_readVal:haxe.Int64, ?_readPos:StdTypes.Int) this = new stdgo._internal.math.rand.Rand_Rand.Rand(_src, _s64, _readVal, _readPos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.T_fastSource_static_extension) abstract T_fastSource(stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource) from stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource to stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) this = new stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource(_mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.T_lockedSource_static_extension) abstract T_lockedSource(stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource) from stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource to stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource {
    public var _lk(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__lk():stdgo._internal.sync.Sync_Mutex.Mutex return this._lk;
    function set__lk(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._lk = v;
        return v;
    }
    public var _s(get, set) : T_rngSource;
    function get__s():T_rngSource return this._s;
    function set__s(v:T_rngSource):T_rngSource {
        this._s = v;
        return v;
    }
    public function new(?_lk:stdgo._internal.sync.Sync_Mutex.Mutex, ?_s:T_rngSource) this = new stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource(_lk, _s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.T_rngSource_static_extension) abstract T_rngSource(stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource) from stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource to stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource {
    public var _tap(get, set) : StdTypes.Int;
    function get__tap():StdTypes.Int return this._tap;
    function set__tap(v:StdTypes.Int):StdTypes.Int {
        this._tap = v;
        return v;
    }
    public var _feed(get, set) : StdTypes.Int;
    function get__feed():StdTypes.Int return this._feed;
    function set__feed(v:StdTypes.Int):StdTypes.Int {
        this._feed = v;
        return v;
    }
    public var _vec(get, set) : haxe.ds.Vector<haxe.Int64>;
    function get__vec():haxe.ds.Vector<haxe.Int64> return haxe.ds.Vector.fromArrayCopy([for (i in this._vec) i]);
    function set__vec(v:haxe.ds.Vector<haxe.Int64>):haxe.ds.Vector<haxe.Int64> {
        this._vec = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt64>);
        return v;
    }
    public function new(?_tap:StdTypes.Int, ?_feed:StdTypes.Int, ?_vec:haxe.ds.Vector<haxe.Int64>) this = new stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource(_tap, _feed, ([for (i in _vec) i] : stdgo.GoArray<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.Zipf_static_extension) abstract Zipf(stdgo._internal.math.rand.Rand_Zipf.Zipf) from stdgo._internal.math.rand.Rand_Zipf.Zipf to stdgo._internal.math.rand.Rand_Zipf.Zipf {
    public var _r(get, set) : Rand_;
    function get__r():Rand_ return this._r;
    function set__r(v:Rand_):Rand_ {
        this._r = v;
        return v;
    }
    public var _imax(get, set) : StdTypes.Float;
    function get__imax():StdTypes.Float return this._imax;
    function set__imax(v:StdTypes.Float):StdTypes.Float {
        this._imax = v;
        return v;
    }
    public var _v(get, set) : StdTypes.Float;
    function get__v():StdTypes.Float return this._v;
    function set__v(v:StdTypes.Float):StdTypes.Float {
        this._v = v;
        return v;
    }
    public var _q(get, set) : StdTypes.Float;
    function get__q():StdTypes.Float return this._q;
    function set__q(v:StdTypes.Float):StdTypes.Float {
        this._q = v;
        return v;
    }
    public var _s(get, set) : StdTypes.Float;
    function get__s():StdTypes.Float return this._s;
    function set__s(v:StdTypes.Float):StdTypes.Float {
        this._s = v;
        return v;
    }
    public var _oneminusQ(get, set) : StdTypes.Float;
    function get__oneminusQ():StdTypes.Float return this._oneminusQ;
    function set__oneminusQ(v:StdTypes.Float):StdTypes.Float {
        this._oneminusQ = v;
        return v;
    }
    public var _oneminusQinv(get, set) : StdTypes.Float;
    function get__oneminusQinv():StdTypes.Float return this._oneminusQinv;
    function set__oneminusQinv(v:StdTypes.Float):StdTypes.Float {
        this._oneminusQinv = v;
        return v;
    }
    public var _hxm(get, set) : StdTypes.Float;
    function get__hxm():StdTypes.Float return this._hxm;
    function set__hxm(v:StdTypes.Float):StdTypes.Float {
        this._hxm = v;
        return v;
    }
    public var _hx0minusHxm(get, set) : StdTypes.Float;
    function get__hx0minusHxm():StdTypes.Float return this._hx0minusHxm;
    function set__hx0minusHxm(v:StdTypes.Float):StdTypes.Float {
        this._hx0minusHxm = v;
        return v;
    }
    public function new(?_r:Rand_, ?_imax:StdTypes.Float, ?_v:StdTypes.Float, ?_q:StdTypes.Float, ?_s:StdTypes.Float, ?_oneminusQ:StdTypes.Float, ?_oneminusQinv:StdTypes.Float, ?_hxm:StdTypes.Float, ?_hx0minusHxm:StdTypes.Float) this = new stdgo._internal.math.rand.Rand_Zipf.Zipf(_r, _imax, _v, _q, _s, _oneminusQ, _oneminusQinv, _hxm, _hx0minusHxm);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Rand_static_extension {
    static public function read(_r:Rand_, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function shuffle(_r:Rand_, _n:StdTypes.Int, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        final _swap = _swap;
        stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.shuffle(_r, _n, _swap);
    }
    static public function perm(_r:Rand_, _n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.perm(_r, _n)) i];
    }
    static public function float32(_r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.float32(_r);
    }
    static public function float64(_r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.float64(_r);
    }
    static public function intn(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.intn(_r, _n);
    }
    static public function _int31n(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension._int31n(_r, _n);
    }
    static public function int31n(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int31n(_r, _n);
    }
    static public function int63n(_r:Rand_, _n:haxe.Int64):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int63n(_r, _n);
    }
    static public function int_(_r:Rand_):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int_(_r);
    }
    static public function int31(_r:Rand_):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int31(_r);
    }
    static public function uint64(_r:Rand_):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.uint64(_r);
    }
    static public function uint32(_r:Rand_):std.UInt {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.uint32(_r);
    }
    static public function int63(_r:Rand_):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.int63(_r);
    }
    static public function seed(_r:Rand_, _seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.seed(_r, _seed);
    }
    static public function normFloat64(_r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.normFloat64(_r);
    }
    static public function expFloat64(_r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand_Rand_static_extension.Rand_static_extension.expFloat64(_r);
    }
}
class T_fastSource_static_extension {
    static public function _read(_fs:T_fastSource, _p:Array<std.UInt>, _readVal:stdgo.Pointer<haxe.Int64>, _readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension._read(_fs, _p, _readVal, _readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_:T_fastSource):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension.uint64(_);
    }
    static public function seed(_:T_fastSource, _0:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension.seed(_, _0);
    }
    static public function int63(_:T_fastSource):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension.int63(_);
    }
}
class T_lockedSource_static_extension {
    static public function _read(_r:T_lockedSource, _p:Array<std.UInt>, _readVal:stdgo.Pointer<haxe.Int64>, _readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension._read(_r, _p, _readVal, _readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _seed(_r:T_lockedSource, _seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension._seed(_r, _seed);
    }
    static public function _seedPos(_r:T_lockedSource, _seed:haxe.Int64, _readPos:stdgo.Pointer<StdTypes.Int>):Void {
        stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension._seedPos(_r, _seed, _readPos);
    }
    static public function seed(_r:T_lockedSource, _seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension.seed(_r, _seed);
    }
    static public function uint64(_r:T_lockedSource):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension.uint64(_r);
    }
    static public function int63(_r:T_lockedSource):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_T_lockedSource_static_extension.T_lockedSource_static_extension.int63(_r);
    }
}
class T_rngSource_static_extension {
    static public function uint64(_rng:T_rngSource):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_T_rngSource_static_extension.T_rngSource_static_extension.uint64(_rng);
    }
    static public function int63(_rng:T_rngSource):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_T_rngSource_static_extension.T_rngSource_static_extension.int63(_rng);
    }
    static public function seed(_rng:T_rngSource, _seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_T_rngSource_static_extension.T_rngSource_static_extension.seed(_rng, _seed);
    }
}
class Zipf_static_extension {
    static public function uint64(_z:Zipf):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_Zipf_static_extension.Zipf_static_extension.uint64(_z);
    }
    static public function _hinv(_z:Zipf, _x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.rand.Rand_Zipf_static_extension.Zipf_static_extension._hinv(_z, _x);
    }
    static public function _h(_z:Zipf, _x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.rand.Rand_Zipf_static_extension.Zipf_static_extension._h(_z, _x);
    }
}
/**
    /|*{
    	gotoNext = 2730297
    	_ = gotoNext == 2730297
    	f_2730305 = float32(r.Float64())
    	if f_2730305 == 1 {
    		gotoNext = 2730342
    		_ = gotoNext == 2730342
    		gotoNext = 2730297
    		gotoNext = 2730410
    	} else {
    		gotoNext = 2730410
    	}
    	_ = gotoNext == 2730410
    	return f_2730305
    	gotoNext = -1
    }*|/
**/
class Rand {
    static public function int31nForTest(_r:Rand_, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_int31nForTest.int31nForTest(_r, _n);
    }
    static public function getNormalDistributionParameters():stdgo.Tuple.Tuple4<StdTypes.Float, haxe.ds.Vector<std.UInt>, haxe.ds.Vector<StdTypes.Float>, haxe.ds.Vector<StdTypes.Float>> {
        return {
            final obj = stdgo._internal.math.rand.Rand_getNormalDistributionParameters.getNormalDistributionParameters();
            { _0 : obj._0, _1 : haxe.ds.Vector.fromArrayCopy([for (i in obj._1) i]), _2 : haxe.ds.Vector.fromArrayCopy([for (i in obj._2) i]), _3 : haxe.ds.Vector.fromArrayCopy([for (i in obj._3) i]) };
        };
    }
    static public function getExponentialDistributionParameters():stdgo.Tuple.Tuple4<StdTypes.Float, haxe.ds.Vector<std.UInt>, haxe.ds.Vector<StdTypes.Float>, haxe.ds.Vector<StdTypes.Float>> {
        return {
            final obj = stdgo._internal.math.rand.Rand_getExponentialDistributionParameters.getExponentialDistributionParameters();
            { _0 : obj._0, _1 : haxe.ds.Vector.fromArrayCopy([for (i in obj._1) i]), _2 : haxe.ds.Vector.fromArrayCopy([for (i in obj._2) i]), _3 : haxe.ds.Vector.fromArrayCopy([for (i in obj._3) i]) };
        };
    }
    /**
        NewSource returns a new pseudo-random Source seeded with the given value.
        Unlike the default Source used by top-level functions, this source is not
        safe for concurrent use by multiple goroutines.
        The returned Source implements Source64.
    **/
    static public function newSource(_seed:haxe.Int64):Source {
        return stdgo._internal.math.rand.Rand_newSource.newSource(_seed);
    }
    /**
        New returns a new Rand that uses random values from src
        to generate other random values.
    **/
    static public function new_(_src:Source):Rand_ {
        return stdgo._internal.math.rand.Rand_new_.new_(_src);
    }
    /**
        Seed uses the provided seed value to initialize the default Source to a
        deterministic state. Seed values that have the same remainder when
        divided by 2³¹-1 generate the same pseudo-random sequence.
        Seed, unlike the Rand.Seed method, is safe for concurrent use.
        
        If Seed is not called, the generator is seeded randomly at program startup.
        
        Prior to Go 1.20, the generator was seeded like Seed(1) at program startup.
        To force the old behavior, call Seed(1) at program startup.
        Alternately, set GODEBUG=randautoseed=0 in the environment
        before making any calls to functions in this package.
        
        Deprecated: As of Go 1.20 there is no reason to call Seed with
        a random value. Programs that call Seed with a known value to get
        a specific sequence of results should use New(NewSource(seed)) to
        obtain a local random generator.
    **/
    static public function seed(_seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand_seed.seed(_seed);
    }
    /**
        Int63 returns a non-negative pseudo-random 63-bit integer as an int64
        from the default Source.
    **/
    static public function int63():haxe.Int64 {
        return stdgo._internal.math.rand.Rand_int63.int63();
    }
    /**
        Uint32 returns a pseudo-random 32-bit value as a uint32
        from the default Source.
    **/
    static public function uint32():std.UInt {
        return stdgo._internal.math.rand.Rand_uint32.uint32();
    }
    /**
        Uint64 returns a pseudo-random 64-bit value as a uint64
        from the default Source.
    **/
    static public function uint64():haxe.UInt64 {
        return stdgo._internal.math.rand.Rand_uint64.uint64();
    }
    /**
        Int31 returns a non-negative pseudo-random 31-bit integer as an int32
        from the default Source.
    **/
    static public function int31():StdTypes.Int {
        return stdgo._internal.math.rand.Rand_int31.int31();
    }
    /**
        Int returns a non-negative pseudo-random int from the default Source.
    **/
    static public function int_():StdTypes.Int {
        return stdgo._internal.math.rand.Rand_int_.int_();
    }
    /**
        Int63n returns, as an int64, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
    **/
    static public function int63n(_n:haxe.Int64):haxe.Int64 {
        return stdgo._internal.math.rand.Rand_int63n.int63n(_n);
    }
    /**
        Int31n returns, as an int32, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
    **/
    static public function int31n(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_int31n.int31n(_n);
    }
    /**
        Intn returns, as an int, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
    **/
    static public function intn(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand_intn.intn(_n);
    }
    /**
        Float64 returns, as a float64, a pseudo-random number in the half-open interval [0.0,1.0)
        from the default Source.
    **/
    static public function float64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_float64.float64();
    }
    /**
        Float32 returns, as a float32, a pseudo-random number in the half-open interval [0.0,1.0)
        from the default Source.
    **/
    static public function float32():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_float32.float32();
    }
    /**
        Perm returns, as a slice of n ints, a pseudo-random permutation of the integers
        in the half-open interval [0,n) from the default Source.
    **/
    static public function perm(_n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.rand.Rand_perm.perm(_n)) i];
    }
    /**
        Shuffle pseudo-randomizes the order of elements using the default Source.
        n is the number of elements. Shuffle panics if n < 0.
        swap swaps the elements with indexes i and j.
    **/
    static public function shuffle(_n:StdTypes.Int, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        final _swap = _swap;
        stdgo._internal.math.rand.Rand_shuffle.shuffle(_n, _swap);
    }
    /**
        Read generates len(p) random bytes from the default Source and
        writes them into p. It always returns len(p) and a nil error.
        Read, unlike the Rand.Read method, is safe for concurrent use.
        
        Deprecated: For almost all use cases, crypto/rand.Read is more appropriate.
    **/
    static public function read(_p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.rand.Rand_read.read(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NormFloat64 returns a normally distributed float64 in the range
        [-math.MaxFloat64, +math.MaxFloat64] with
        standard normal distribution (mean = 0, stddev = 1)
        from the default Source.
        To produce a different normal distribution, callers can
        adjust the output using:
        
        	sample = NormFloat64() * desiredStdDev + desiredMean
    **/
    static public function normFloat64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_normFloat64.normFloat64();
    }
    /**
        ExpFloat64 returns an exponentially distributed float64 in the range
        (0, +math.MaxFloat64] with an exponential distribution whose rate parameter
        (lambda) is 1 and whose mean is 1/lambda (1) from the default Source.
        To produce a distribution with a different rate parameter,
        callers can adjust the output using:
        
        	sample = ExpFloat64() / desiredRateParameter
    **/
    static public function expFloat64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand_expFloat64.expFloat64();
    }
    /**
        NewZipf returns a Zipf variate generator.
        The generator generates values k ∈ [0, imax]
        such that P(k) is proportional to (v + k) ** (-s).
        Requirements: s > 1 and v >= 1.
    **/
    static public function newZipf(_r:Rand_, _s:StdTypes.Float, _v:StdTypes.Float, _imax:haxe.UInt64):Zipf {
        return stdgo._internal.math.rand.Rand_newZipf.newZipf(_r, _s, _v, _imax);
    }
}
