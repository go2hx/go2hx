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
function testMemStats(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__testMemStatsCount._testMemStatsCount++;
        stdgo._internal.runtime.Runtime_gc.gc();
        var _st = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_st);
        var _nz = (function(_x:stdgo.AnyInterface):stdgo.Error {
            if (_x != (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeOf.typeOf(_x)).interface_())) {
                return (null : stdgo.Error);
            };
            return stdgo._internal.fmt.Fmt_errorf.errorf(("zero value" : stdgo.GoString));
        } : stdgo.AnyInterface -> stdgo.Error);
        var _le = (function(_thresh:stdgo.GoFloat64):stdgo.AnyInterface -> stdgo.Error {
            return function(_x:stdgo.AnyInterface):stdgo.Error {
                if ((_internal.runtime_test.Runtime_test__testMemStatsCount._testMemStatsCount > (1 : stdgo.GoInt) : Bool)) {
                    return (null : stdgo.Error);
                };
                if ((stdgo._internal.reflect.Reflect_valueOf.valueOf(_x).convert(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_thresh))).float_() < _thresh : Bool)) {
                    return (null : stdgo.Error);
                };
                return stdgo._internal.fmt.Fmt_errorf.errorf(("insanely high value (overflow?); want <= %v" : stdgo.GoString), stdgo.Go.toInterface(_thresh));
            };
        } : stdgo.GoFloat64 -> (stdgo.AnyInterface -> stdgo.Error));
        var _eq = (function(_x:stdgo.AnyInterface):stdgo.AnyInterface -> stdgo.Error {
            return function(_y:stdgo.AnyInterface):stdgo.Error {
                if (_x == (_y)) {
                    return (null : stdgo.Error);
                };
                return stdgo._internal.fmt.Fmt_errorf.errorf(("want %v" : stdgo.GoString), _x);
            };
        } : stdgo.AnyInterface -> (stdgo.AnyInterface -> stdgo.Error));
        var _fields = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>);
            x.set(("Alloc" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("TotalAlloc" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+11 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("Sys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("Lookups" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_eq(stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("Mallocs" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("Frees" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("HeapAlloc" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("HeapSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("HeapIdle" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("HeapInuse" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("HeapReleased" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("HeapObjects" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("StackInuse" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("StackSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("MSpanInuse" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("MSpanSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("MCacheInuse" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("MCacheSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("BuckHashSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("GCSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("OtherSys" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("NextGC" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("LastGC" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_nz]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("PauseTotalNs" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_le((1e+11 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("PauseNs" : stdgo.GoString), (null : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("PauseEnd" : stdgo.GoString), (null : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("NumGC" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+09 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("NumForcedGC" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(2, 2, ...[_nz, _le((1e+09 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("GCCPUFraction" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_le((0.99 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("EnableGC" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_eq(stdgo.Go.toInterface(true))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("DebugGC" : stdgo.GoString), (new stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>(1, 1, ...[_eq(stdgo.Go.toInterface(false))]) : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
x.set(("BySize" : stdgo.GoString), (null : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>>);
        var _rst = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_st)).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _rst.type().numField() : Bool), _i++, {
                var __0 = (_rst.type().field(_i).name?.__copy__() : stdgo.GoString), __1 = (_rst.field(_i).interface_() : stdgo.AnyInterface);
var _val = __1, _name = __0;
                var __tmp__ = (_fields != null && _fields.exists(_name?.__copy__()) ? { _0 : _fields[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.AnyInterface -> stdgo.Error>), _1 : false }), _checks:stdgo.Slice<stdgo.AnyInterface -> stdgo.Error> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("unknown MemStats field %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    continue;
                };
                for (__6 => _check in _checks) {
                    {
                        var _err = (_check(_val) : stdgo.Error);
                        if (_err != null) {
                            _t.errorf(("%s = %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), _val, stdgo.Go.toInterface(_err));
                        };
                    };
                };
            });
        };
        if (_st.sys != (((((((_st.heapSys + _st.stackSys : stdgo.GoUInt64) + _st.mspanSys : stdgo.GoUInt64) + _st.mcacheSys : stdgo.GoUInt64) + _st.buckHashSys : stdgo.GoUInt64) + _st.gcsys : stdgo.GoUInt64) + _st.otherSys : stdgo.GoUInt64))) {
            _t.fatalf(("Bad sys value: %+v" : stdgo.GoString), stdgo.Go.toInterface((_st : stdgo._internal.runtime.Runtime_MemStats.MemStats)));
        };
        if ((_st.heapIdle + _st.heapInuse : stdgo.GoUInt64) != (_st.heapSys)) {
            _t.fatalf(("HeapIdle(%d) + HeapInuse(%d) should be equal to HeapSys(%d), but isn\'t." : stdgo.GoString), stdgo.Go.toInterface(_st.heapIdle), stdgo.Go.toInterface(_st.heapInuse), stdgo.Go.toInterface(_st.heapSys));
        };
        {
            var _lpe = (_st.pauseEnd[(((_st.numGC + (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) % (_st.pauseEnd.length) : stdgo.GoInt)] : stdgo.GoUInt64);
            if (_st.lastGC != (_lpe)) {
                _t.fatalf(("LastGC(%d) != last PauseEnd(%d)" : stdgo.GoString), stdgo.Go.toInterface(_st.lastGC), stdgo.Go.toInterface(_lpe));
            };
        };
        var _pauseTotal:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        for (__6 => _pause in _st.pauseNs) {
            _pauseTotal = (_pauseTotal + (_pause) : stdgo.GoUInt64);
        };
        if (((_st.numGC : stdgo.GoInt) < (_st.pauseNs.length) : Bool)) {
            if (_st.pauseTotalNs != (_pauseTotal)) {
                _t.fatalf(("PauseTotalNs(%d) != sum PauseNs(%d)" : stdgo.GoString), stdgo.Go.toInterface(_st.pauseTotalNs), stdgo.Go.toInterface(_pauseTotal));
            };
            {
                var _i = (_st.numGC : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_st.pauseNs.length) : Bool), _i++, {
                    if (_st.pauseNs[(_i : stdgo.GoInt)] != ((0i64 : stdgo.GoUInt64))) {
                        _t.fatalf(("Non-zero PauseNs[%d]: %+v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_st));
                    };
                    if (_st.pauseEnd[(_i : stdgo.GoInt)] != ((0i64 : stdgo.GoUInt64))) {
                        _t.fatalf(("Non-zero PauseEnd[%d]: %+v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_st));
                    };
                });
            };
        } else {
            if ((_st.pauseTotalNs < _pauseTotal : Bool)) {
                _t.fatalf(("PauseTotalNs(%d) < sum PauseNs(%d)" : stdgo.GoString), stdgo.Go.toInterface(_st.pauseTotalNs), stdgo.Go.toInterface(_pauseTotal));
            };
        };
        if ((_st.numForcedGC > _st.numGC : Bool)) {
            _t.fatalf(("NumForcedGC(%d) > NumGC(%d)" : stdgo.GoString), stdgo.Go.toInterface(_st.numForcedGC), stdgo.Go.toInterface(_st.numGC));
        };
    }
