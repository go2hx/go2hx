package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _noAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _n:stdgo.GoInt, _f:stdgo.GoInt -> Void):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        var _i = (-1 : stdgo.GoInt);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun(_n, function():Void {
            _f(_i);
            _i++;
        }) : stdgo.GoFloat64);
        if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("%d iterations: got %v mallocs, want 0" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_allocs));
        };
    }
