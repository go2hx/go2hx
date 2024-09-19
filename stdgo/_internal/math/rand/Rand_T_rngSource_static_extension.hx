package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.math.rand.Rand.T_rngSource_asInterface) class T_rngSource_static_extension {
    @:keep
    static public function uint64( _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>):stdgo.GoUInt64 {
        @:recv var _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource> = _rng;
        _rng._tap--;
        if ((_rng._tap < (0 : stdgo.GoInt) : Bool)) {
            _rng._tap = (_rng._tap + ((607 : stdgo.GoInt)) : stdgo.GoInt);
        };
        _rng._feed--;
        if ((_rng._feed < (0 : stdgo.GoInt) : Bool)) {
            _rng._feed = (_rng._feed + ((607 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _x = (_rng._vec[(_rng._feed : stdgo.GoInt)] + _rng._vec[(_rng._tap : stdgo.GoInt)] : stdgo.GoInt64);
        _rng._vec[(_rng._feed : stdgo.GoInt)] = _x;
        return (_x : stdgo.GoUInt64);
    }
    @:keep
    static public function int63( _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>):stdgo.GoInt64 {
        @:recv var _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource> = _rng;
        return ((_rng.uint64() & (9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function seed( _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _rng:stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource> = _rng;
        _rng._tap = (0 : stdgo.GoInt);
        _rng._feed = (334 : stdgo.GoInt);
        _seed = (_seed % (2147483647i64 : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_seed < (0i64 : stdgo.GoInt64) : Bool)) {
            _seed = (_seed + ((2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if (_seed == ((0i64 : stdgo.GoInt64))) {
            _seed = (89482311i64 : stdgo.GoInt64);
        };
        var _x = (_seed : stdgo.GoInt32);
        {
            var _i = (-20 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (607 : stdgo.GoInt) : Bool), _i++, {
                _x = stdgo._internal.math.rand.Rand__seedrand._seedrand(_x);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _u:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    _u = ((_x : stdgo.GoInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoInt64);
                    _x = stdgo._internal.math.rand.Rand__seedrand._seedrand(_x);
                    _u = (_u ^ (((_x : stdgo.GoInt64) << (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _x = stdgo._internal.math.rand.Rand__seedrand._seedrand(_x);
                    _u = (_u ^ ((_x : stdgo.GoInt64)) : stdgo.GoInt64);
                    _u = (_u ^ (stdgo._internal.math.rand.Rand__rngCooked._rngCooked[(_i : stdgo.GoInt)]) : stdgo.GoInt64);
                    _rng._vec[(_i : stdgo.GoInt)] = _u;
                };
            });
        };
    }
}
