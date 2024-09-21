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
function testFillAligned(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fillAlignedSlow = (function(_x:stdgo.GoUInt64, _m:stdgo.GoUInt):stdgo.GoUInt64 {
            if (_m == ((1u32 : stdgo.GoUInt))) {
                return _x;
            };
            var _out = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            {
                var _i = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                stdgo.Go.cfor((_i < (64u32 : stdgo.GoUInt) : Bool), _i = (_i + (_m) : stdgo.GoUInt), {
                    {
                        var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                        stdgo.Go.cfor((_j < _m : Bool), _j++, {
                            if ((_x & (((1i64 : stdgo.GoUInt64) << ((_i + _j : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                                _out = (_out | (((((((1i64 : stdgo.GoUInt64) << _m : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << _i : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                break;
                            };
                        });
                    };
                });
            };
            return _out;
        } : (stdgo.GoUInt64, stdgo.GoUInt) -> stdgo.GoUInt64);
        var _check = (function(_x:stdgo.GoUInt64, _m:stdgo.GoUInt):Void {
            var _want = (_fillAlignedSlow(_x, _m) : stdgo.GoUInt64);
            {
                var _got = (stdgo._internal.runtime.Runtime_fillAligned.fillAligned(_x, _m) : stdgo.GoUInt64);
                if (_got != (_want)) {
                    _t.logf(("got:  %064b" : stdgo.GoString), stdgo.Go.toInterface(_got));
                    _t.logf(("want: %064b" : stdgo.GoString), stdgo.Go.toInterface(_want));
                    _t.errorf(("bad fillAligned(%016x, %d)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_m));
                };
            };
        } : (stdgo.GoUInt64, stdgo.GoUInt) -> Void);
        {
            var _m = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_m <= (64u32 : stdgo.GoUInt) : Bool), _m = (_m * ((2u32 : stdgo.GoUInt)) : stdgo.GoUInt), {
                var _tests = (new stdgo.Slice<stdgo.GoUInt64>(16, 16, ...[
(0i64 : stdgo.GoUInt64),
(4294967295i64 : stdgo.GoUInt64),
(-4294967296i64 : stdgo.GoUInt64),
(-9223372036854775807i64 : stdgo.GoUInt64),
(-1152921504606846961i64 : stdgo.GoUInt64),
(-1152921500306636785i64 : stdgo.GoUInt64),
(-1i64 : stdgo.GoUInt64),
(1i64 : stdgo.GoUInt64),
(2i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
((1i64 : stdgo.GoUInt64) << ((_m - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64),
((1i64 : stdgo.GoUInt64) << _m : stdgo.GoUInt64),
(-5752329277507669994i64 : stdgo.GoUInt64),
(4140391863955488536i64 : stdgo.GoUInt64),
(1120420955500400750i64 : stdgo.GoUInt64),
(6985449713192378598i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
                for (__6 => _test in _tests) {
                    _check(_test, _m);
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                        _check(stdgo._internal.math.rand.Rand_uint64.uint64(), _m);
                        if ((_m > (1u32 : stdgo.GoUInt) : Bool)) {
                            var _val = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                            {
                                var _n = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                                stdgo.Go.cfor((_n < (64u32 : stdgo.GoUInt) : Bool), _n = (_n + (_m) : stdgo.GoUInt), {
                                    if ((stdgo._internal.math.rand.Rand_uint64.uint64() % (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                                        _val = (_val | ((((stdgo._internal.math.rand.Rand_uint64.uint64() & (((((1i64 : stdgo.GoUInt64) << _m : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64)) << _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                    };
                                });
                            };
                            _check(_val, _m);
                        };
                    });
                };
            });
        };
    }
