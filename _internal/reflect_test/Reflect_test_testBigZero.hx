package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testBigZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _v:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
        var _z = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_v)).type()).interface_() : stdgo.GoArray<stdgo.GoUInt8>)) : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1024 : stdgo.GoInt) : Bool), _i++, {
                if (_z[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    _t.fatalf(("Zero object not all zero, index %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
