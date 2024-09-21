package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSetPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ok = (function(_f:() -> Void):Void {
            _f();
        } : (() -> Void) -> Void);
        var _bad = (function(_f:() -> Void):Void {
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Set" : stdgo.GoString), _f);
        } : (() -> Void) -> Void);
        var _clear = (function(_v:stdgo._internal.reflect.Reflect_Value.Value):Void {
            _v.set(stdgo._internal.reflect.Reflect_zero.zero(_v.type())?.__copy__());
        } : stdgo._internal.reflect.Reflect_Value.Value -> Void);
        {};
        {};
        {};
        {};
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testSetPanic___localname___T_94655.T_testSetPanic___localname___T_94655() : _internal.reflect_test.Reflect_test_T_testSetPanic___localname___T_94655.T_testSetPanic___localname___T_94655)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _bad(function():Void {
            _clear(_v.field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((2 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((2 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((3 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((3 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((4 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_T_testSetPanic___localname___T_94655.T_testSetPanic___localname___T_94655() : _internal.reflect_test.Reflect_test_T_testSetPanic___localname___T_94655.T_testSetPanic___localname___T_94655)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testSetPanic___localname___T_94655.T_testSetPanic___localname___T_94655>))).elem()?.__copy__();
        _ok(function():Void {
            _clear(_v.field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((1 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((2 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((2 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((3 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((3 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((4 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _clear(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        _bad(function():Void {
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
    }
