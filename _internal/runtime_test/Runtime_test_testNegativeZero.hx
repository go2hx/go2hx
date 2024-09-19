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
function testNegativeZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, Bool>);
        _m[(0 : stdgo.GoFloat64)] = true;
        _m[stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))] = true;
        if ((_m.length) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("length wrong" : stdgo.GoString)));
        };
        for (_k => _ in _m) {
            if ((stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _k) > (0 : stdgo.GoFloat64) : Bool)) {
                _t.error(stdgo.Go.toInterface(("wrong sign" : stdgo.GoString)));
            };
        };
        _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, Bool>);
        _m[stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))] = true;
        _m[(0 : stdgo.GoFloat64)] = true;
        if ((_m.length) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("length wrong" : stdgo.GoString)));
        };
        for (_k => _ in _m) {
            if ((stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _k) < (0 : stdgo.GoFloat64) : Bool)) {
                _t.error(stdgo.Go.toInterface(("wrong sign" : stdgo.GoString)));
            };
        };
    }
