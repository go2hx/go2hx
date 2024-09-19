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
function testStringConcatenationAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _b[(_i : stdgo.GoInt)] = ((_i : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                });
            };
            var _s = ((("foo" : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _want = ("foo0123456789" : stdgo.GoString);
                if (_s != (_want)) {
                    _t.fatalf(("want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s));
                };
            };
        }) : stdgo.GoFloat64);
        if (_n != (1 : stdgo.GoFloat64)) {
            _t.fatalf(("want 1 allocation, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
