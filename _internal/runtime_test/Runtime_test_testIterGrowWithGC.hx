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
function testIterGrowWithGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                _m[_i] = _i;
            });
        };
        {
            var _i = (8 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                _m[_i] = ((_m[_i] ?? (0 : stdgo.GoInt)) + (_i) : stdgo.GoInt);
            });
        };
        var _growflag = (true : Bool);
        var _bitmask = (0 : stdgo.GoInt);
        for (_k => _ in _m) {
            if ((_k < (16 : stdgo.GoInt) : Bool)) {
                _bitmask = (_bitmask | (((1 : stdgo.GoInt) << (_k : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            if (_growflag) {
                {
                    var _i = (100 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                        _m[_i] = _i;
                    });
                };
                stdgo._internal.runtime.Runtime_gc.gc();
                _growflag = false;
            };
        };
        if (_bitmask != ((65535 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("missing key" : stdgo.GoString)), stdgo.Go.toInterface(_bitmask));
        };
    }
