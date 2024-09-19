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
function _testMapNan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _m:stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>):Void {
        if ((_m.length) != ((3 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("length wrong" : stdgo.GoString)));
        };
        var _s = (0 : stdgo.GoInt);
        for (_k => _v in _m) {
            if (_k == (_k)) {
                _t.error(stdgo.Go.toInterface(("nan disappeared" : stdgo.GoString)));
            };
            if (((_v & ((_v - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) != ((0 : stdgo.GoInt))) {
                _t.error(stdgo.Go.toInterface(("value wrong" : stdgo.GoString)));
            };
            _s = (_s | (_v) : stdgo.GoInt);
        };
        if (_s != ((7 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("values wrong" : stdgo.GoString)));
        };
    }
