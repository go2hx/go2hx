package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testUnexported(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pub:_internal.reflect_test.Reflect_test_Public.Public = ({} : _internal.reflect_test.Reflect_test_Public.Public);
        _pub._private.s = ("S" : stdgo.GoString);
        _pub._private.t = (_pub._private.a.__slice__(0) : stdgo.Slice<_internal.reflect_test.Reflect_test_Private.Private>);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_pub) : stdgo.Ref<_internal.reflect_test.Reflect_test_Public.Public>))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().field((0 : stdgo.GoInt))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().field((1 : stdgo.GoInt))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().field((2 : stdgo.GoInt))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().fieldByName(("X" : stdgo.GoString))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().fieldByName(("Y" : stdgo.GoString))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().fieldByName(("Z" : stdgo.GoString))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.type().method((0 : stdgo.GoInt)).func?.__copy__());
        var __tmp__ = _v.type().methodByName(("M" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_Method.Method = __tmp__._0, __7:Bool = __tmp__._1;
        _internal.reflect_test.Reflect_test__isValid._isValid(_m.func?.__copy__());
        {
            var __tmp__ = _v.type().methodByName(("P" : stdgo.GoString));
            _m = __tmp__._0?.__copy__();
        };
        _internal.reflect_test.Reflect_test__isValid._isValid(_m.func?.__copy__());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.elem().field((0 : stdgo.GoInt)).interface_());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.elem().field((1 : stdgo.GoInt)).interface_());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(stdgo.Go.toInterface(stdgo.Go.asInterface(_v.elem().field((2 : stdgo.GoInt)).field((2 : stdgo.GoInt)).index((0 : stdgo.GoInt)))));
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.elem().fieldByName(("X" : stdgo.GoString)).interface_());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.elem().fieldByName(("Y" : stdgo.GoString)).interface_());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.elem().fieldByName(("Z" : stdgo.GoString)).interface_());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.elem().fieldByName(("S" : stdgo.GoString)).index((0 : stdgo.GoInt)).interface_());
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_v.type().method((0 : stdgo.GoInt)).func.interface_());
        {
            var __tmp__ = _v.type().methodByName(("P" : stdgo.GoString));
            _m = __tmp__._0?.__copy__();
        };
        _internal.reflect_test.Reflect_test__isNonNil._isNonNil(_m.func.interface_());
        var _priv:_internal.reflect_test.Reflect_test_Private.Private = ({} : _internal.reflect_test.Reflect_test_Private.Private);
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_priv) : stdgo.Ref<_internal.reflect_test.Reflect_test_Private.Private>))))?.__copy__();
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().field((0 : stdgo.GoInt))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().field((1 : stdgo.GoInt))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().fieldByName(("x" : stdgo.GoString))?.__copy__());
        _internal.reflect_test.Reflect_test__isValid._isValid(_v.elem().fieldByName(("y" : stdgo.GoString))?.__copy__());
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            _v.elem().field((0 : stdgo.GoInt)).interface_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            _v.elem().field((1 : stdgo.GoInt)).interface_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            _v.elem().fieldByName(("x" : stdgo.GoString)).interface_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            _v.elem().fieldByName(("y" : stdgo.GoString)).interface_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Method" : stdgo.GoString), function():Void {
            _v.type().method((0 : stdgo.GoInt));
        });
    }
