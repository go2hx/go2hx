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
function testAppendOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (("1234" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _x = ((_x.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_x : Array<stdgo.GoUInt8>)));
        var _got = ((_x : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ("2341234" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("overlap failed: got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
