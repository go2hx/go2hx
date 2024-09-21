package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSetIter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("foo" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("bar" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("baz" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _m = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_data))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _i = _m.mapRange();
        var _k = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str()))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Value.SetIterKey called before Next" : stdgo.GoString), function():Void {
            _k.setIterKey(_i);
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Value.SetIterValue called before Next" : stdgo.GoString), function():Void {
            _v.setIterValue(_i);
        });
        var _data2 = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        while (_i.next()) {
            _k.setIterKey(_i);
            _v.setIterValue(_i);
            _data2[(stdgo.Go.typeAssert((_k.interface_() : stdgo.GoString)) : stdgo.GoString)] = (stdgo.Go.typeAssert((_v.interface_() : stdgo.GoInt)) : stdgo.GoInt);
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2))) {
            _t.errorf(("maps not equal, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_data2), stdgo.Go.toInterface(_data));
        };
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Value.SetIterKey called on exhausted iterator" : stdgo.GoString), function():Void {
            _k.setIterKey(_i);
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Value.SetIterValue called on exhausted iterator" : stdgo.GoString), function():Void {
            _v.setIterValue(_i);
        });
        _i.reset(_m?.__copy__());
        _i.next();
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Value.SetIterKey using unaddressable value" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.str())).setIterKey(_i);
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Value.SetIterValue using unaddressable value" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoInt))).setIterValue(_i);
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("value of type string is not assignable to type int" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))).elem().setIterKey(_i);
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("value of type int is not assignable to type string" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str()))).elem().setIterValue(_i);
        });
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _y = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _y.setIterKey(_i);
        {
            var __tmp__ = (_data != null && _data.exists((stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString)?.__copy__()) ? { _0 : _data[(stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __6:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("got key %s which is not in map" : stdgo.GoString), _x);
            };
        };
        _y.setIterValue(_i);
        if ((((stdgo.Go.typeAssert((_x : stdgo.GoInt)) : stdgo.GoInt) < (1 : stdgo.GoInt) : Bool) || ((stdgo.Go.typeAssert((_x : stdgo.GoInt)) : stdgo.GoInt) > (3 : stdgo.GoInt) : Bool) : Bool)) {
            _t.errorf(("got value %d which is not in map" : stdgo.GoString), _x);
        };
        var _a = (88 : stdgo.GoInt);
        var _b = (99 : stdgo.GoInt);
        var _pp = ({
            final x = new stdgo.GoMap.GoPointerMap<stdgo.Pointer<stdgo.GoInt>, stdgo.Pointer<stdgo.GoInt>>();
            x.set(stdgo.Go.pointer(_a), stdgo.Go.pointer(_b));
            cast x;
        } : stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.Pointer<stdgo.GoInt>>);
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_pp)).mapRange();
        _i.next();
        _y.setIterKey(_i);
        {
            var _got = ((stdgo.Go.typeAssert((_y.interface_() : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>).value : stdgo.GoInt);
            if (_got != (_a)) {
                _t.errorf(("pointer incorrect: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_a));
            };
        };
        _y.setIterValue(_i);
        {
            var _got = ((stdgo.Go.typeAssert((_y.interface_() : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>).value : stdgo.GoInt);
            if (_got != (_b)) {
                _t.errorf(("pointer incorrect: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_b));
            };
        };
        _m = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _m : _data } : _internal.reflect_test.Reflect_test_T__struct_94.T__struct_94)))).field((0 : stdgo.GoInt))?.__copy__();
        {
            var _iter = _m.mapRange();
            while (_iter.next()) {
                _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("using value obtained using unexported field" : stdgo.GoString), function():Void {
                    _k.setIterKey(_iter);
                });
                _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("using value obtained using unexported field" : stdgo.GoString), function():Void {
                    _v.setIterValue(_iter);
                });
            };
        };
    }
