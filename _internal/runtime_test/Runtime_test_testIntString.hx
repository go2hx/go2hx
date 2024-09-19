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
function testIntString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt32) : Bool), _i++, {
                _s = (_s + ((((_i + (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString) + (((_i + (48 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            });
        };
        {
            var _want = ("01122334" : stdgo.GoString);
            if (_s != (_want)) {
                _t.fatalf(("want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s));
            };
        };
        var _a:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(4, 4, ...[for (i in 0 ... 4) ("" : stdgo.GoString)]);
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt32) : Bool), _i++, {
                _a[(_i : stdgo.GoInt)] = ((_i + (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
            });
        };
        _s = (((_a[(0 : stdgo.GoInt)] + _a[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + _a[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + _a[(3 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__();
        {
            var _want = ("0123" : stdgo.GoString);
            if (_s != (_want)) {
                _t.fatalf(("want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s));
            };
        };
    }
