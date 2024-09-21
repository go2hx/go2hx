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
function testSmhasherTwoNonzero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("Too slow on wasm" : stdgo.GoString)));
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("Skipping in short mode" : stdgo.GoString)));
        };
        if (false) {
            _t.skip(stdgo.Go.toInterface(("Too long for race mode" : stdgo.GoString)));
        };
        var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
        {
            var _n = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (16 : stdgo.GoInt) : Bool), _n++, {
                _internal.runtime_test.Runtime_test__twoNonZero._twoNonZero(_h, _n);
            });
        };
        _h._check(_t);
    }
