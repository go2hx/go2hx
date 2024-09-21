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
function benchmarkCompareStringBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_bytes.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _bytes = (_bytes.__append__(...(("Hello Gophers!" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        var __0 = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((("hello" : stdgo.GoString) + (_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _s2 = __1, _s1 = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (_s1 != ((_s2.__slice__((("hello" : stdgo.GoString).length)) : stdgo.GoString))) {
                    _b.fatal(stdgo.Go.toInterface(("s1 != s2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_s1.length : stdgo.GoInt64));
    }
