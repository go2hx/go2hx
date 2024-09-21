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
function testStringOnStack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                _s = ((((("a" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("b" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("c" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            });
        };
        {
            var _want = ("aaabcbabccbaabcbabccc" : stdgo.GoString);
            if (_s != (_want)) {
                _t.fatalf(("want: \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s));
            };
        };
    }
