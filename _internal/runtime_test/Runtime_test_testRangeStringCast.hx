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
function testRangeStringCast(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            for (_i => _c in (_s : stdgo.Slice<stdgo.GoUInt8>)) {
                if (_c != (_s[(_i : stdgo.GoInt)])) {
                    _t.fatalf(("want \'%c\' at pos %v, got \'%c\'" : stdgo.GoString), stdgo.Go.toInterface(_s[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c));
                };
            };
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
