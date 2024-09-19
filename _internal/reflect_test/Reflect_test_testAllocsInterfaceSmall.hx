package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAllocsInterfaceSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0i64 : stdgo.GoInt64)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                _v.interface_();
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.error(stdgo.Go.toInterface(("allocs:" : stdgo.GoString)), stdgo.Go.toInterface(_allocs));
            };
        };
    }
