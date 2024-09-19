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
function testGrowWithNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>);
        var _nan = (stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat64);
        _m[_nan] = (1 : stdgo.GoInt);
        _m[_nan] = (2 : stdgo.GoInt);
        _m[_nan] = ((_m[_nan] ?? (0 : stdgo.GoInt)) + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        var _cnt = (0 : stdgo.GoInt);
        var _s = (0 : stdgo.GoInt);
        var _growflag = (true : Bool);
        for (_k => _v in _m) {
            if (_growflag) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                        _m[(_i : stdgo.GoFloat64)] = _i;
                    });
                };
                {
                    var _i = (50 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                        _m[(_i : stdgo.GoFloat64)] = ((_m[(_i : stdgo.GoFloat64)] ?? (0 : stdgo.GoInt)) + (_i) : stdgo.GoInt);
                    });
                };
                _growflag = false;
            };
            if (_k != (_k)) {
                _cnt++;
                _s = (_s | (_v) : stdgo.GoInt);
            };
        };
        if (_cnt != ((3 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("NaN keys lost during grow" : stdgo.GoString)));
        };
        if (_s != ((7 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("NaN values lost during grow" : stdgo.GoString)));
        };
    }
