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
function testConcatTempString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = ("bytes" : stdgo.GoString);
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            if (((("prefix " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" suffix" : stdgo.GoString)?.__copy__() : stdgo.GoString) != (("prefix bytes suffix" : stdgo.GoString))) {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(((("prefix " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" suffix" : stdgo.GoString)?.__copy__() : stdgo.GoString)), stdgo.Go.toInterface(("prefix bytes suffix" : stdgo.GoString)));
            };
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
