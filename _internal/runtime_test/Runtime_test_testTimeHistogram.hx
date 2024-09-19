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
function testTimeHistogram(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _h = (stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dummyTimeHistogram._dummyTimeHistogram) : stdgo.Ref<stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram>);
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                var _v = ((_j : stdgo.GoInt64) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt64);
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < _j : Bool), _k++, {
                        _h.record(_v);
                    });
                };
            });
        };
        {
            var _i = (9 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (48 : stdgo.GoInt) : Bool), _i++, {
                var _base = ((1i64 : stdgo.GoInt64) << ((_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt64);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                        var _v = ((_j : stdgo.GoInt64) << (((_i - (1 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt64);
                        {
                            var _k = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_k < (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) - (9 : stdgo.GoInt) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : Bool), _k++, {
                                _h.record((_base + _v : stdgo.GoInt64));
                            });
                        };
                    });
                };
            });
        };
        _h.record((-1i64 : stdgo.GoInt64));
        _h.record((9223372036854775807i64 : stdgo.GoInt64));
        _h.record((9223372036854775807i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (40 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                        var __tmp__ = _h.count(_i, _j), _c:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _t.errorf(("unexpected invalid bucket: (%d, %d)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                        } else {
                            var _idx = (((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUInt64);
                            if (_c != (_idx)) {
                                _t.errorf(("bucket (%d, %d) has count that is not %d: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface(_c));
                            };
                        };
                    });
                };
            });
        };
        var __tmp__ = _h.count((-1 : stdgo.GoInt), (0 : stdgo.GoInt)), _c:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            _t.errorf(("expected to hit underflow bucket: (%d, %d)" : stdgo.GoString), stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        };
        if (_c != ((1i64 : stdgo.GoUInt64))) {
            _t.errorf(("overflow bucket has count that is not 1: %d" : stdgo.GoString), stdgo.Go.toInterface(_c));
        };
        {
            var __tmp__ = _h.count((41 : stdgo.GoInt), (0 : stdgo.GoInt));
            _c = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (_ok) {
            _t.errorf(("expected to hit overflow bucket: (%d, %d)" : stdgo.GoString), stdgo.Go.toInterface((41 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        };
        if (_c != ((2i64 : stdgo.GoUInt64))) {
            _t.errorf(("overflow bucket has count that is not 2: %d" : stdgo.GoString), stdgo.Go.toInterface(_c));
        };
        _internal.runtime_test.Runtime_test__dummyTimeHistogram._dummyTimeHistogram = (new stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram() : stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram);
    }
