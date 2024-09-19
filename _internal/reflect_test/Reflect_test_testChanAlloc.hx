package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testChanAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _c.send(_v?.__copy__());
            var __blank__ = _c.recv();
        }) : stdgo.GoFloat64);
        if (((_allocs < (0.5 : stdgo.GoFloat64) : Bool) || (_allocs > (1.5 : stdgo.GoFloat64) : Bool) : Bool)) {
            _t.errorf(("allocs per chan send/recv: want 1 got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
