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
function testStringIndexHaystack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _haystack = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _needle = ("ll" : stdgo.GoString);
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            if (stdgo._internal.strings.Strings_index.index((_haystack : stdgo.GoString)?.__copy__(), _needle?.__copy__()) != ((2 : stdgo.GoInt))) {
                _t.fatalf(("needle not found" : stdgo.GoString));
            };
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
