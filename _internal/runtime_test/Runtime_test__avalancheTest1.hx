package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _avalancheTest1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _k:_internal.runtime_test.Runtime_test_Key.Key):Void {
        {};
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1234i64 : stdgo.GoInt64)));
        var _n = (_k._bits() : stdgo.GoInt);
        var _grid = (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoInt)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>);
        {
            var _z = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_z < (100000 : stdgo.GoInt) : Bool), _z++, {
                _k._random(_r);
                var _h = (_k._hash() : stdgo.GoUIntptr);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        _k._flipBit(_i);
                        var _d = (_h ^ _k._hash() : stdgo.GoUIntptr);
                        _k._flipBit(_i);
                        var _g = (stdgo.Go.setRef(_grid[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (32 : stdgo.GoInt) : Bool), _j++, {
                                _g[(_j : stdgo.GoInt)] = (_g[(_j : stdgo.GoInt)] + (((_d & (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoInt)) : stdgo.GoInt);
                                _d = (_d >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUIntptr);
                            });
                        };
                    });
                };
            });
        };
        var n = (_n * (32 : stdgo.GoInt) : stdgo.GoInt);
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        {
            _c = (0 : stdgo.GoFloat64);
            stdgo.Go.cfor((stdgo._internal.math.Math_pow.pow(stdgo._internal.math.Math_erf.erf((_c / stdgo._internal.math.Math_sqrt.sqrt((2 : stdgo.GoFloat64)) : stdgo.GoFloat64)), (n : stdgo.GoFloat64)) < (0.9999 : stdgo.GoFloat64) : Bool), _c = (_c + (0.1 : stdgo.GoFloat64) : stdgo.GoFloat64), {});
        };
        _c = (_c * (8 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _mean = (50000 : stdgo.GoFloat64);
        var _stddev = ((0.5 : stdgo.GoFloat64) * stdgo._internal.math.Math_sqrt.sqrt((100000 : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _low = ((_mean - (_c * _stddev : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        var _high = ((_mean + (_c * _stddev : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (32 : stdgo.GoInt) : Bool), _j++, {
                        var _x = (_grid[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] : stdgo.GoInt);
                        if (((_x < _low : Bool) || (_x > _high : Bool) : Bool)) {
                            _t.errorf(("bad bias for %s bit %d -> bit %d: %d/%d\n" : stdgo.GoString), stdgo.Go.toInterface(_k._name()), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((100000 : stdgo.GoInt)));
                        };
                    });
                };
            });
        };
    }
