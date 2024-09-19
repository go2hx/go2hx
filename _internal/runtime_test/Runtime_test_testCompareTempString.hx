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
function testCompareTempString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            if ((_b : stdgo.GoString) != (_s)) {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_s));
            };
            if (((_b : stdgo.GoString) < _s : Bool)) {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_s));
            };
            if (((_b : stdgo.GoString) > _s : Bool)) {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_s));
            };
            if ((_b : stdgo.GoString) == (_s)) {} else {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_s));
            };
            if (((_b : stdgo.GoString) <= _s : Bool)) {} else {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_s));
            };
            if (((_b : stdgo.GoString) >= _s : Bool)) {} else {
                _t.fatalf(("strings are not equal: \'%v\' and \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_s));
            };
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
