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
function testEqString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), ("c" : stdgo.GoString), ("aaa" : stdgo.GoString), ("ccc" : stdgo.GoString), (("cccc" : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("1234567890" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__6 => _s1 in _s) {
            for (__7 => _s2 in _s) {
                var _x = (_s1 == (_s2) : Bool);
                var _y = (_internal.runtime_test.Runtime_test__eqstring_generic._eqstring_generic(_s1?.__copy__(), _s2?.__copy__()) : Bool);
                if (_x != (_y)) {
                    _t.errorf(("(\"%s\" == \"%s\") = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                };
            };
        };
    }
