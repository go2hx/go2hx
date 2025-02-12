package math.rand.v2;
class Source_static_extension {
    static public function uint64(t:_internal.math.rand.v2.V2_source.Source):haxe.UInt64 {
        return _internal.math.rand.v2.V2_source_static_extension.Source_static_extension.uint64(t);
    }
}
typedef Source = _internal.math.rand.v2.V2_source.Source;
@:dox(hide) class T_intType_static_extension {

}
@:union @:using(_internal.math.rand.v2.V2_t_inttype_static_extension.T_intType_static_extension) typedef T_intType = {

}
@:structInit @:using(math.rand.v2.V2.ChaCha8_static_extension) abstract ChaCha8(_internal.math.rand.v2.V2_chacha8.ChaCha8) from _internal.math.rand.v2.V2_chacha8.ChaCha8 to _internal.math.rand.v2.V2_chacha8.ChaCha8 {
    public var _state(get, set) : internal.chacha8rand.Chacha8rand.State;
    function get__state():internal.chacha8rand.Chacha8rand.State return this._state;
    function set__state(v:internal.chacha8rand.Chacha8rand.State):internal.chacha8rand.Chacha8rand.State {
        this._state = v;
        return v;
    }
    public var _readBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__readBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._readBuf) i]);
    function set__readBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._readBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _readLen(get, set) : StdTypes.Int;
    function get__readLen():StdTypes.Int return this._readLen;
    function set__readLen(v:StdTypes.Int):StdTypes.Int {
        this._readLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_state:internal.chacha8rand.Chacha8rand.State, ?_readBuf:haxe.ds.Vector<std.UInt>, ?_readLen:StdTypes.Int) this = new _internal.math.rand.v2.V2_chacha8.ChaCha8(_state, ([for (i in _readBuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_readLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(math.rand.v2.V2.PCG_static_extension) abstract PCG(_internal.math.rand.v2.V2_pcg.PCG) from _internal.math.rand.v2.V2_pcg.PCG to _internal.math.rand.v2.V2_pcg.PCG {
    public var _hi(get, set) : haxe.UInt64;
    function get__hi():haxe.UInt64 return this._hi;
    function set__hi(v:haxe.UInt64):haxe.UInt64 {
        this._hi = (v : stdgo.GoUInt64);
        return v;
    }
    public var _lo(get, set) : haxe.UInt64;
    function get__lo():haxe.UInt64 return this._lo;
    function set__lo(v:haxe.UInt64):haxe.UInt64 {
        this._lo = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_hi:haxe.UInt64, ?_lo:haxe.UInt64) this = new _internal.math.rand.v2.V2_pcg.PCG((_hi : stdgo.GoUInt64), (_lo : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(math.rand.v2.V2.Rand_static_extension) abstract Rand(_internal.math.rand.v2.V2_rand.Rand) from _internal.math.rand.v2.V2_rand.Rand to _internal.math.rand.v2.V2_rand.Rand {
    public var _src(get, set) : Source;
    function get__src():Source return this._src;
    function set__src(v:Source):Source {
        this._src = v;
        return v;
    }
    public function new(?_src:Source) this = new _internal.math.rand.v2.V2_rand.Rand(_src);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(math.rand.v2.V2.T_runtimeSource_static_extension) @:dox(hide) abstract T_runtimeSource(_internal.math.rand.v2.V2_t_runtimesource.T_runtimeSource) from _internal.math.rand.v2.V2_t_runtimesource.T_runtimeSource to _internal.math.rand.v2.V2_t_runtimesource.T_runtimeSource {
    public function new() this = new _internal.math.rand.v2.V2_t_runtimesource.T_runtimeSource();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(math.rand.v2.V2.Zipf_static_extension) abstract Zipf(_internal.math.rand.v2.V2_zipf.Zipf) from _internal.math.rand.v2.V2_zipf.Zipf to _internal.math.rand.v2.V2_zipf.Zipf {
    public var _r(get, set) : Rand;
    function get__r():Rand return this._r;
    function set__r(v:Rand):Rand {
        this._r = (v : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
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
    public function new(?_r:Rand, ?_imax:StdTypes.Float, ?_v:StdTypes.Float, ?_q:StdTypes.Float, ?_s:StdTypes.Float, ?_oneminusQ:StdTypes.Float, ?_oneminusQinv:StdTypes.Float, ?_hxm:StdTypes.Float, ?_hx0minusHxm:StdTypes.Float) this = new _internal.math.rand.v2.V2_zipf.Zipf((_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>), (_imax : stdgo.GoFloat64), (_v : stdgo.GoFloat64), (_q : stdgo.GoFloat64), (_s : stdgo.GoFloat64), (_oneminusQ : stdgo.GoFloat64), (_oneminusQinv : stdgo.GoFloat64), (_hxm : stdgo.GoFloat64), (_hx0minusHxm : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_intTypePointer = _internal.math.rand.v2.V2_t_inttypepointer.T_intTypePointer;
typedef ChaCha8Pointer = _internal.math.rand.v2.V2_chacha8pointer.ChaCha8Pointer;
class ChaCha8_static_extension {
    static public function marshalBinary(_c:ChaCha8):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<_internal.math.rand.v2.V2_chacha8.ChaCha8>);
        return {
            final obj = _internal.math.rand.v2.V2_chacha8_static_extension.ChaCha8_static_extension.marshalBinary(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_c:ChaCha8, _data:Array<std.UInt>):stdgo.Error {
        final _c = (_c : stdgo.Ref<_internal.math.rand.v2.V2_chacha8.ChaCha8>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.math.rand.v2.V2_chacha8_static_extension.ChaCha8_static_extension.unmarshalBinary(_c, _data);
    }
    static public function read(_c:ChaCha8, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<_internal.math.rand.v2.V2_chacha8.ChaCha8>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = _internal.math.rand.v2.V2_chacha8_static_extension.ChaCha8_static_extension.read(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_c:ChaCha8):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<_internal.math.rand.v2.V2_chacha8.ChaCha8>);
        return _internal.math.rand.v2.V2_chacha8_static_extension.ChaCha8_static_extension.uint64(_c);
    }
    static public function seed(_c:ChaCha8, _seed:haxe.ds.Vector<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<_internal.math.rand.v2.V2_chacha8.ChaCha8>);
        final _seed = ([for (i in _seed) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        _internal.math.rand.v2.V2_chacha8_static_extension.ChaCha8_static_extension.seed(_c, _seed);
    }
}
typedef PCGPointer = _internal.math.rand.v2.V2_pcgpointer.PCGPointer;
class PCG_static_extension {
    static public function uint64(_p:PCG):haxe.UInt64 {
        final _p = (_p : stdgo.Ref<_internal.math.rand.v2.V2_pcg.PCG>);
        return _internal.math.rand.v2.V2_pcg_static_extension.PCG_static_extension.uint64(_p);
    }
    static public function _next(_p:PCG):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        final _p = (_p : stdgo.Ref<_internal.math.rand.v2.V2_pcg.PCG>);
        return {
            final obj = _internal.math.rand.v2.V2_pcg_static_extension.PCG_static_extension._next(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_p:PCG, _data:Array<std.UInt>):stdgo.Error {
        final _p = (_p : stdgo.Ref<_internal.math.rand.v2.V2_pcg.PCG>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.math.rand.v2.V2_pcg_static_extension.PCG_static_extension.unmarshalBinary(_p, _data);
    }
    static public function marshalBinary(_p:PCG):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<_internal.math.rand.v2.V2_pcg.PCG>);
        return {
            final obj = _internal.math.rand.v2.V2_pcg_static_extension.PCG_static_extension.marshalBinary(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seed(_p:PCG, _seed1:haxe.UInt64, _seed2:haxe.UInt64):Void {
        final _p = (_p : stdgo.Ref<_internal.math.rand.v2.V2_pcg.PCG>);
        final _seed1 = (_seed1 : stdgo.GoUInt64);
        final _seed2 = (_seed2 : stdgo.GoUInt64);
        _internal.math.rand.v2.V2_pcg_static_extension.PCG_static_extension.seed(_p, _seed1, _seed2);
    }
}
typedef RandPointer = _internal.math.rand.v2.V2_randpointer.RandPointer;
class Rand_static_extension {
    static public function shuffle(_r:Rand, _n:StdTypes.Int, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        final _swap = _swap;
        _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.shuffle(_r, _n, _swap);
    }
    static public function perm(_r:Rand, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.perm(_r, _n)) i];
    }
    static public function float32(_r:Rand):StdTypes.Float {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.float32(_r);
    }
    static public function float64(_r:Rand):StdTypes.Float {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.float64(_r);
    }
    static public function uintN(_r:Rand, _n:std.UInt):std.UInt {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoUInt);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.uintN(_r, _n);
    }
    static public function intN(_r:Rand, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.intN(_r, _n);
    }
    static public function uint32N(_r:Rand, _n:std.UInt):std.UInt {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoUInt32);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.uint32N(_r, _n);
    }
    static public function int32N(_r:Rand, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoInt32);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.int32N(_r, _n);
    }
    static public function _uint32n(_r:Rand, _n:std.UInt):std.UInt {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoUInt32);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension._uint32n(_r, _n);
    }
    static public function _uint64n(_r:Rand, _n:haxe.UInt64):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoUInt64);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension._uint64n(_r, _n);
    }
    static public function uint64N(_r:Rand, _n:haxe.UInt64):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoUInt64);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.uint64N(_r, _n);
    }
    static public function int64N(_r:Rand, _n:haxe.Int64):haxe.Int64 {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _n = (_n : stdgo.GoInt64);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.int64N(_r, _n);
    }
    static public function uint(_r:Rand):std.UInt {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.uint(_r);
    }
    static public function int_(_r:Rand):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.int_(_r);
    }
    static public function int32(_r:Rand):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.int32(_r);
    }
    static public function uint64(_r:Rand):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.uint64(_r);
    }
    static public function uint32(_r:Rand):std.UInt {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.uint32(_r);
    }
    static public function int64(_r:Rand):haxe.Int64 {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.int64(_r);
    }
    static public function normFloat64(_r:Rand):StdTypes.Float {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.normFloat64(_r);
    }
    static public function expFloat64(_r:Rand):StdTypes.Float {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        return _internal.math.rand.v2.V2_rand_static_extension.Rand_static_extension.expFloat64(_r);
    }
}
@:dox(hide) typedef T_runtimeSourcePointer = _internal.math.rand.v2.V2_t_runtimesourcepointer.T_runtimeSourcePointer;
@:dox(hide) class T_runtimeSource_static_extension {
    static public function uint64(_:T_runtimeSource):haxe.UInt64 {
        return _internal.math.rand.v2.V2_t_runtimesource_static_extension.T_runtimeSource_static_extension.uint64(_);
    }
}
typedef ZipfPointer = _internal.math.rand.v2.V2_zipfpointer.ZipfPointer;
class Zipf_static_extension {
    static public function uint64(_z:Zipf):haxe.UInt64 {
        final _z = (_z : stdgo.Ref<_internal.math.rand.v2.V2_zipf.Zipf>);
        return _internal.math.rand.v2.V2_zipf_static_extension.Zipf_static_extension.uint64(_z);
    }
    static public function _hinv(_z:Zipf, _x:StdTypes.Float):StdTypes.Float {
        final _z = (_z : stdgo.Ref<_internal.math.rand.v2.V2_zipf.Zipf>);
        final _x = (_x : stdgo.GoFloat64);
        return _internal.math.rand.v2.V2_zipf_static_extension.Zipf_static_extension._hinv(_z, _x);
    }
    static public function _h(_z:Zipf, _x:StdTypes.Float):StdTypes.Float {
        final _z = (_z : stdgo.Ref<_internal.math.rand.v2.V2_zipf.Zipf>);
        final _x = (_x : stdgo.GoFloat64);
        return _internal.math.rand.v2.V2_zipf_static_extension.Zipf_static_extension._h(_z, _x);
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
    * [crypto/rand] package.
**/
class V2 {
    /**
        * NewChaCha8 returns a new ChaCha8 seeded with the given seed.
    **/
    static public inline function newChaCha8(_seed:haxe.ds.Vector<std.UInt>):ChaCha8 {
        final _seed = ([for (i in _seed) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return _internal.math.rand.v2.V2_newchacha8.newChaCha8(_seed);
    }
    /**
        * NewPCG returns a new PCG seeded with the given values.
    **/
    static public inline function newPCG(_seed1:haxe.UInt64, _seed2:haxe.UInt64):PCG {
        final _seed1 = (_seed1 : stdgo.GoUInt64);
        final _seed2 = (_seed2 : stdgo.GoUInt64);
        return _internal.math.rand.v2.V2_newpcg.newPCG(_seed1, _seed2);
    }
    /**
        * New returns a new Rand that uses random values from src
        * to generate other random values.
    **/
    static public inline function new_(_src:Source):Rand {
        return _internal.math.rand.v2.V2_new_.new_(_src);
    }
    /**
        * Int64 returns a non-negative pseudo-random 63-bit integer as an int64
        * from the default Source.
    **/
    static public inline function int64():haxe.Int64 {
        return _internal.math.rand.v2.V2_int64.int64();
    }
    /**
        * Uint32 returns a pseudo-random 32-bit value as a uint32
        * from the default Source.
    **/
    static public inline function uint32():std.UInt {
        return _internal.math.rand.v2.V2_uint32.uint32();
    }
    /**
        * Uint64N returns, as a uint64, a pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function uint64N(_n:haxe.UInt64):haxe.UInt64 {
        final _n = (_n : stdgo.GoUInt64);
        return _internal.math.rand.v2.V2_uint64n.uint64N(_n);
    }
    /**
        * Uint32N returns, as a uint32, a pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function uint32N(_n:std.UInt):std.UInt {
        final _n = (_n : stdgo.GoUInt32);
        return _internal.math.rand.v2.V2_uint32n.uint32N(_n);
    }
    /**
        * Uint64 returns a pseudo-random 64-bit value as a uint64
        * from the default Source.
    **/
    static public inline function uint64():haxe.UInt64 {
        return _internal.math.rand.v2.V2_uint64.uint64();
    }
    /**
        * Int32 returns a non-negative pseudo-random 31-bit integer as an int32
        * from the default Source.
    **/
    static public inline function int32():StdTypes.Int {
        return _internal.math.rand.v2.V2_int32.int32();
    }
    /**
        * Int returns a non-negative pseudo-random int from the default Source.
    **/
    static public inline function int_():StdTypes.Int {
        return _internal.math.rand.v2.V2_int_.int_();
    }
    /**
        * Uint returns a pseudo-random uint from the default Source.
    **/
    static public inline function uint():std.UInt {
        return _internal.math.rand.v2.V2_uint.uint();
    }
    /**
        * Int64N returns, as an int64, a pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function int64N(_n:haxe.Int64):haxe.Int64 {
        final _n = (_n : stdgo.GoInt64);
        return _internal.math.rand.v2.V2_int64n.int64N(_n);
    }
    /**
        * Int32N returns, as an int32, a pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function int32N(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt32);
        return _internal.math.rand.v2.V2_int32n.int32N(_n);
    }
    /**
        * IntN returns, as an int, a pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function intN(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return _internal.math.rand.v2.V2_intn.intN(_n);
    }
    /**
        * UintN returns, as a uint, a pseudo-random number in the half-open interval [0,n)
        * from the default Source.
        * It panics if n <= 0.
    **/
    static public inline function uintN(_n:std.UInt):std.UInt {
        final _n = (_n : stdgo.GoUInt);
        return _internal.math.rand.v2.V2_uintn.uintN(_n);
    }
    /**
        * N returns a pseudo-random number in the half-open interval [0,n) from the default Source.
        * The type parameter Int can be any integer type.
        * It panics if n <= 0.
    **/
    static public inline function n(_n:Dynamic):Dynamic {
        return _internal.math.rand.v2.V2_n.n(_n);
    }
    /**
        * Float64 returns, as a float64, a pseudo-random number in the half-open interval [0.0,1.0)
        * from the default Source.
    **/
    static public inline function float64():StdTypes.Float {
        return _internal.math.rand.v2.V2_float64.float64();
    }
    /**
        * Float32 returns, as a float32, a pseudo-random number in the half-open interval [0.0,1.0)
        * from the default Source.
    **/
    static public inline function float32():StdTypes.Float {
        return _internal.math.rand.v2.V2_float32.float32();
    }
    /**
        * Perm returns, as a slice of n ints, a pseudo-random permutation of the integers
        * in the half-open interval [0,n) from the default Source.
    **/
    static public inline function perm(_n:StdTypes.Int):Array<StdTypes.Int> {
        final _n = (_n : stdgo.GoInt);
        return [for (i in _internal.math.rand.v2.V2_perm.perm(_n)) i];
    }
    /**
        * Shuffle pseudo-randomizes the order of elements using the default Source.
        * n is the number of elements. Shuffle panics if n < 0.
        * swap swaps the elements with indexes i and j.
    **/
    static public inline function shuffle(_n:StdTypes.Int, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        final _n = (_n : stdgo.GoInt);
        final _swap = _swap;
        _internal.math.rand.v2.V2_shuffle.shuffle(_n, _swap);
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
        return _internal.math.rand.v2.V2_normfloat64.normFloat64();
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
        return _internal.math.rand.v2.V2_expfloat64.expFloat64();
    }
    /**
        * NewZipf returns a Zipf variate generator.
        * The generator generates values k ∈ [0, imax]
        * such that P(k) is proportional to (v + k) ** (-s).
        * Requirements: s > 1 and v >= 1.
    **/
    static public inline function newZipf(_r:Rand, _s:StdTypes.Float, _v:StdTypes.Float, _imax:haxe.UInt64):Zipf {
        final _r = (_r : stdgo.Ref<_internal.math.rand.v2.V2_rand.Rand>);
        final _s = (_s : stdgo.GoFloat64);
        final _v = (_v : stdgo.GoFloat64);
        final _imax = (_imax : stdgo.GoUInt64);
        return _internal.math.rand.v2.V2_newzipf.newZipf(_r, _s, _v, _imax);
    }
}
