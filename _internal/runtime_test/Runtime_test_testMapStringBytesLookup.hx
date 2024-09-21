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
function testMapStringBytesLookup(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("1000000000000000000000000000000000000000000000000" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("2000000000000000000000000000000000000000000000000" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _buf = (("1000000000000000000000000000000000000000000000000" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _x = (_m[(_buf : stdgo.GoString)] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            if (_x != ((1 : stdgo.GoInt))) {
                _t.errorf(("m[string([]byte(\"1\"))] = %d, want 1" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
        _buf[(0 : stdgo.GoInt)] = (50 : stdgo.GoUInt8);
        {
            var _x = (_m[(_buf : stdgo.GoString)] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            if (_x != ((2 : stdgo.GoInt))) {
                _t.errorf(("m[string([]byte(\"2\"))] = %d, want 2" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
        var _x:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _x = (_x + ((_m[(_buf : stdgo.GoString)] ?? (0 : stdgo.GoInt))) : stdgo.GoInt);
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.errorf(("AllocsPerRun for m[string(buf)] = %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _x = (0 : stdgo.GoInt);
        _n = stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            var __tmp__ = (_m != null && _m.exists((_buf : stdgo.GoString)?.__copy__()) ? { _0 : _m[(_buf : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _y:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("!ok" : stdgo.GoString));
            };
            _x = (_x + (_y) : stdgo.GoInt);
        });
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.errorf(("AllocsPerRun for x,ok = m[string(buf)] = %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
