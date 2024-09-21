package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testNilMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _keys = _mv.mapKeys();
        if ((_keys.length) != ((0 : stdgo.GoInt))) {
            _t.errorf((">0 keys for nil map: %v" : stdgo.GoString), stdgo.Go.toInterface(_keys));
        };
        var _x = (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("hello" : stdgo.GoString)))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_x.kind() != ((0u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _t.errorf(("m.MapIndex(\"hello\") for nil map = %v, want Invalid Value" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        var _mbig:stdgo.GoMap<stdgo.GoString, stdgo.GoArray<stdgo.GoUInt8>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoArray<stdgo.GoUInt8>>);
        _x = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_mbig)).mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("hello" : stdgo.GoString)))?.__copy__())?.__copy__();
        if (_x.kind() != ((0u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _t.errorf(("mbig.MapIndex(\"hello\") for nil map = %v, want Invalid Value" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("hi" : stdgo.GoString)))?.__copy__(), (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value));
    }
