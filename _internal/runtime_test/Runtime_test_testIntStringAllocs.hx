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
function testIntStringAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _unknown = (48 : stdgo.GoInt32);
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _s1 = ((_unknown : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _s2 = (((_unknown + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s1 == (_s2)) {
                _t.fatalf(("bad" : stdgo.GoString));
            };
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
