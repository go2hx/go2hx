package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__noAlloc._noAlloc(_t, (100 : stdgo.GoInt), function(_j:stdgo.GoInt):Void {
            var _i:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            var _v:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
            _i = stdgo.Go.toInterface(function(_j:stdgo.GoInt):stdgo.GoInt {
                return _j;
            });
            _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(_i)?.__copy__();
            if ((stdgo.Go.typeAssert((_v.interface_() : stdgo.GoInt -> stdgo.GoInt)) : stdgo.GoInt -> stdgo.GoInt)(_j) != (_j)) {
                throw stdgo.Go.toInterface(("wrong result" : stdgo.GoString));
            };
        });
    }
