package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testNegativeKindString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (-1 : stdgo.GoInt);
        var _s = (((_x : stdgo._internal.reflect.Reflect_Kind.Kind).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ("kind-1" : stdgo.GoString);
        if (_s != (_want)) {
            _t.fatalf(("Kind(-1).String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
        };
    }
