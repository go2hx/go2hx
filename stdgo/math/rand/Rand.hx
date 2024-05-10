package stdgo.math.rand;
class Source_static_extension {
    static public function seed(t:Source, seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.Source_static_extension.seed(t, seed);
    }
    static public function int63(t:Source):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.Source_static_extension.int63(t);
    }
}
typedef Source = stdgo._internal.math.rand.Rand.Source;
class Source64_static_extension {
    static public function uint64(t:Source64):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.Source64_static_extension.uint64(t);
    }
}
typedef Source64 = stdgo._internal.math.rand.Rand.Source64;
@:structInit @:using(stdgo.math.rand.Rand.Rand__static_extension) abstract Rand_(stdgo._internal.math.rand.Rand.Rand) from stdgo._internal.math.rand.Rand.Rand to stdgo._internal.math.rand.Rand.Rand {
    public var _src(get, set) : stdgo._internal.math.rand.Rand.Source;
    function get__src():stdgo._internal.math.rand.Rand.Source return this._src;
    function set__src(v:stdgo._internal.math.rand.Rand.Source):stdgo._internal.math.rand.Rand.Source {
        this._src = v;
        return v;
    }
    public var _s64(get, set) : stdgo._internal.math.rand.Rand.Source64;
    function get__s64():stdgo._internal.math.rand.Rand.Source64 return this._s64;
    function set__s64(v:stdgo._internal.math.rand.Rand.Source64):stdgo._internal.math.rand.Rand.Source64 {
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
    public function new(?_src:stdgo._internal.math.rand.Rand.Source, ?_s64:stdgo._internal.math.rand.Rand.Source64, ?_readVal:haxe.Int64, ?_readPos:StdTypes.Int) this = new stdgo._internal.math.rand.Rand.Rand(_src, _s64, _readVal, _readPos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.math.rand.Rand.T_fastSource_static_extension) abstract T_fastSource(stdgo._internal.math.rand.Rand.T_fastSource) from stdgo._internal.math.rand.Rand.T_fastSource to stdgo._internal.math.rand.Rand.T_fastSource {
    public var _mu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mu():stdgo._internal.sync.Sync.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex) this = new stdgo._internal.math.rand.Rand.T_fastSource(_mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.math.rand.Rand.T_lockedSource_static_extension) abstract T_lockedSource(stdgo._internal.math.rand.Rand.T_lockedSource) from stdgo._internal.math.rand.Rand.T_lockedSource to stdgo._internal.math.rand.Rand.T_lockedSource {
    public var _lk(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__lk():stdgo._internal.sync.Sync.Mutex return this._lk;
    function set__lk(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._lk = v;
        return v;
    }
    public var _s(get, set) : stdgo._internal.math.rand.Rand.T_rngSource;
    function get__s():stdgo._internal.math.rand.Rand.T_rngSource return this._s;
    function set__s(v:stdgo._internal.math.rand.Rand.T_rngSource):stdgo._internal.math.rand.Rand.T_rngSource {
        this._s = v;
        return v;
    }
    public function new(?_lk:stdgo._internal.sync.Sync.Mutex, ?_s:stdgo._internal.math.rand.Rand.T_rngSource) this = new stdgo._internal.math.rand.Rand.T_lockedSource(_lk, _s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.math.rand.Rand.T_rngSource_static_extension) abstract T_rngSource(stdgo._internal.math.rand.Rand.T_rngSource) from stdgo._internal.math.rand.Rand.T_rngSource to stdgo._internal.math.rand.Rand.T_rngSource {
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
    public function new(?_tap:StdTypes.Int, ?_feed:StdTypes.Int, ?_vec:haxe.ds.Vector<haxe.Int64>) this = new stdgo._internal.math.rand.Rand.T_rngSource(_tap, _feed, ([for (i in _vec) i] : stdgo.GoArray<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.rand.Rand.Zipf_static_extension) abstract Zipf(stdgo._internal.math.rand.Rand.Zipf) from stdgo._internal.math.rand.Rand.Zipf to stdgo._internal.math.rand.Rand.Zipf {
    public var _r(get, set) : stdgo._internal.math.rand.Rand.Rand;
    function get__r():stdgo._internal.math.rand.Rand.Rand return this._r;
    function set__r(v:stdgo._internal.math.rand.Rand.Rand):stdgo._internal.math.rand.Rand.Rand {
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
    public function new(?_r:stdgo._internal.math.rand.Rand.Rand, ?_imax:StdTypes.Float, ?_v:StdTypes.Float, ?_q:StdTypes.Float, ?_s:StdTypes.Float, ?_oneminusQ:StdTypes.Float, ?_oneminusQinv:StdTypes.Float, ?_hxm:StdTypes.Float, ?_hx0minusHxm:StdTypes.Float) this = new stdgo._internal.math.rand.Rand.Zipf(_r, _imax, _v, _q, _s, _oneminusQ, _oneminusQinv, _hxm, _hx0minusHxm);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Rand__static_extension {
    static public function read(r:Rand_, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.math.rand.Rand.Rand_static_extension.read(r, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function shuffle(r:Rand_, n:StdTypes.Int, swap:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void):Void {
        final swap = swap;
        stdgo._internal.math.rand.Rand.Rand_static_extension.shuffle(r, n, swap);
    }
    static public function perm(r:Rand_, n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.rand.Rand.Rand_static_extension.perm(r, n)) i];
    }
    static public function float32(r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.float32(r);
    }
    static public function float64(r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.float64(r);
    }
    static public function intn(r:Rand_, n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.intn(r, n);
    }
    static public function _int31n(r:Rand_, n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.Rand_static_extension._int31n(r, n);
    }
    static public function int31n(r:Rand_, n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.int31n(r, n);
    }
    static public function int63n(r:Rand_, n:haxe.Int64):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.int63n(r, n);
    }
    static public function int_(r:Rand_):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.int_(r);
    }
    static public function int31(r:Rand_):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.int31(r);
    }
    static public function uint64(r:Rand_):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.uint64(r);
    }
    static public function uint32(r:Rand_):std.UInt {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.uint32(r);
    }
    static public function int63(r:Rand_):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.int63(r);
    }
    static public function seed(r:Rand_, seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.Rand_static_extension.seed(r, seed);
    }
    static public function normFloat64(r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.normFloat64(r);
    }
    static public function expFloat64(r:Rand_):StdTypes.Float {
        return stdgo._internal.math.rand.Rand.Rand_static_extension.expFloat64(r);
    }
}
class T_fastSource_static_extension {
    static public function _read(fs:T_fastSource, p:Array<StdTypes.Int>, readVal:stdgo.Pointer<haxe.Int64>, readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.math.rand.Rand.T_fastSource_static_extension._read(fs, p, readVal, readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(:T_fastSource):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.T_fastSource_static_extension.uint64();
    }
    static public function seed(:T_fastSource, 0:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.T_fastSource_static_extension.seed(, 0);
    }
    static public function int63(:T_fastSource):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.T_fastSource_static_extension.int63();
    }
}
class T_lockedSource_static_extension {
    static public function _read(r:T_lockedSource, p:Array<StdTypes.Int>, readVal:stdgo.Pointer<haxe.Int64>, readPos:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.math.rand.Rand.T_lockedSource_static_extension._read(r, p, readVal, readPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _seed(r:T_lockedSource, seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.T_lockedSource_static_extension._seed(r, seed);
    }
    static public function _seedPos(r:T_lockedSource, seed:haxe.Int64, readPos:stdgo.Pointer<StdTypes.Int>):Void {
        stdgo._internal.math.rand.Rand.T_lockedSource_static_extension._seedPos(r, seed, readPos);
    }
    static public function seed(r:T_lockedSource, seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.T_lockedSource_static_extension.seed(r, seed);
    }
    static public function uint64(r:T_lockedSource):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.T_lockedSource_static_extension.uint64(r);
    }
    static public function int63(r:T_lockedSource):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.T_lockedSource_static_extension.int63(r);
    }
}
class T_rngSource_static_extension {
    static public function uint64(rng:T_rngSource):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.T_rngSource_static_extension.uint64(rng);
    }
    static public function int63(rng:T_rngSource):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.T_rngSource_static_extension.int63(rng);
    }
    static public function seed(rng:T_rngSource, seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.T_rngSource_static_extension.seed(rng, seed);
    }
}
class Zipf_static_extension {
    static public function uint64(z:Zipf):haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.Zipf_static_extension.uint64(z);
    }
    static public function _hinv(z:Zipf, x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.rand.Rand.Zipf_static_extension._hinv(z, x);
    }
    static public function _h(z:Zipf, x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.rand.Rand.Zipf_static_extension._h(z, x);
    }
}
/**
    Package rand implements pseudo-random number generators suitable for tasks
    such as simulation, but it should not be used for security-sensitive work.
    
    Random numbers are generated by a [Source], usually wrapped in a [Rand].
    Both types should be used by a single goroutine at a time: sharing among
    multiple goroutines requires some kind of synchronization.
    
    Top-level functions, such as [Float64] and [Int],
    are safe for concurrent use by multiple goroutines.
    
    This package's outputs might be easily predictable regardless of how it's
    seeded. For random numbers suitable for security-sensitive work, see the
    crypto/rand package.
**/
class Rand {
    static public function int31nForTest(r:Rand_, n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.int31nForTest(r, n);
    }
    static public function getNormalDistributionParameters():stdgo.Tuple.Tuple4<StdTypes.Float, haxe.ds.Vector<std.UInt>, haxe.ds.Vector<StdTypes.Float>, haxe.ds.Vector<StdTypes.Float>> {
        return {
            final obj = stdgo._internal.math.rand.Rand.getNormalDistributionParameters();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function getExponentialDistributionParameters():stdgo.Tuple.Tuple4<StdTypes.Float, haxe.ds.Vector<std.UInt>, haxe.ds.Vector<StdTypes.Float>, haxe.ds.Vector<StdTypes.Float>> {
        return {
            final obj = stdgo._internal.math.rand.Rand.getExponentialDistributionParameters();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        NewSource returns a new pseudo-random Source seeded with the given value.
        Unlike the default Source used by top-level functions, this source is not
        safe for concurrent use by multiple goroutines.
        The returned Source implements Source64.
    **/
    static public function newSource(seed:haxe.Int64):Source {
        return stdgo._internal.math.rand.Rand.newSource(seed);
    }
    /**
        New returns a new Rand that uses random values from src
        to generate other random values.
    **/
    static public function new_(src:Source):Rand_ {
        return stdgo._internal.math.rand.Rand.new_(src);
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
    static public function seed(seed:haxe.Int64):Void {
        stdgo._internal.math.rand.Rand.seed(seed);
    }
    /**
        Int63 returns a non-negative pseudo-random 63-bit integer as an int64
        from the default Source.
    **/
    static public function int63():haxe.Int64 {
        return stdgo._internal.math.rand.Rand.int63();
    }
    /**
        Uint32 returns a pseudo-random 32-bit value as a uint32
        from the default Source.
    **/
    static public function uint32():std.UInt {
        return stdgo._internal.math.rand.Rand.uint32();
    }
    /**
        Uint64 returns a pseudo-random 64-bit value as a uint64
        from the default Source.
    **/
    static public function uint64():haxe.UInt64 {
        return stdgo._internal.math.rand.Rand.uint64();
    }
    /**
        Int31 returns a non-negative pseudo-random 31-bit integer as an int32
        from the default Source.
    **/
    static public function int31():StdTypes.Int {
        return stdgo._internal.math.rand.Rand.int31();
    }
    /**
        Int returns a non-negative pseudo-random int from the default Source.
    **/
    static public function int_():StdTypes.Int {
        return stdgo._internal.math.rand.Rand.int_();
    }
    /**
        Int63n returns, as an int64, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
    **/
    static public function int63n(n:haxe.Int64):haxe.Int64 {
        return stdgo._internal.math.rand.Rand.int63n(n);
    }
    /**
        Int31n returns, as an int32, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
    **/
    static public function int31n(n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.int31n(n);
    }
    /**
        Intn returns, as an int, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
    **/
    static public function intn(n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.rand.Rand.intn(n);
    }
    /**
        Float64 returns, as a float64, a pseudo-random number in the half-open interval [0.0,1.0)
        from the default Source.
    **/
    static public function float64():StdTypes.Float {
        return stdgo._internal.math.rand.Rand.float64();
    }
    /**
        Float32 returns, as a float32, a pseudo-random number in the half-open interval [0.0,1.0)
        from the default Source.
    **/
    static public function float32():StdTypes.Float {
        return stdgo._internal.math.rand.Rand.float32();
    }
    /**
        Perm returns, as a slice of n ints, a pseudo-random permutation of the integers
        in the half-open interval [0,n) from the default Source.
    **/
    static public function perm(n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.rand.Rand.perm(n)) i];
    }
    /**
        Shuffle pseudo-randomizes the order of elements using the default Source.
        n is the number of elements. Shuffle panics if n < 0.
        swap swaps the elements with indexes i and j.
    **/
    static public function shuffle(n:StdTypes.Int, swap:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void):Void {
        final swap = swap;
        stdgo._internal.math.rand.Rand.shuffle(n, swap);
    }
    /**
        Read generates len(p) random bytes from the default Source and
        writes them into p. It always returns len(p) and a nil error.
        Read, unlike the Rand.Read method, is safe for concurrent use.
        
        Deprecated: For almost all use cases, crypto/rand.Read is more appropriate.
    **/
    static public function read(p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.math.rand.Rand.read(p);
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
        return stdgo._internal.math.rand.Rand.normFloat64();
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
        return stdgo._internal.math.rand.Rand.expFloat64();
    }
    /**
        NewZipf returns a Zipf variate generator.
        The generator generates values k ∈ [0, imax]
        such that P(k) is proportional to (v + k) ** (-s).
        Requirements: s > 1 and v >= 1.
    **/
    static public function newZipf(r:Rand_, s:StdTypes.Float, v:StdTypes.Float, imax:haxe.UInt64):Zipf {
        return stdgo._internal.math.rand.Rand.newZipf(r, s, v, imax);
    }
}
