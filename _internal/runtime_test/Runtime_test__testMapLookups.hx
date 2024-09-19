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
function _testMapLookups(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _m:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void {
        for (_k => _v in _m) {
            if ((_m[_k] ?? ("" : stdgo.GoString)) != (_v)) {
                _t.fatalf(("m[%q] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_m[_k] ?? ("" : stdgo.GoString))), stdgo.Go.toInterface(_v));
            };
        };
    }
