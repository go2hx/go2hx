package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        {};
        {};
        var _ok = (function(_f:() -> Void):Void {
            _f();
        } : (() -> Void) -> Void);
        var _badCall = (function(_f:() -> Void):Void {
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Call" : stdgo.GoString), _f);
        } : (() -> Void) -> Void);
        var _badMethod = (function(_f:() -> Void):Void {
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Method" : stdgo.GoString), _f);
        } : (() -> Void) -> Void);
        var _call = (function(_v:stdgo._internal.reflect.Reflect_Value.Value):Void {
            _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        } : stdgo._internal.reflect.Reflect_Value.Value -> Void);
        var _i = ((0 : _internal.reflect_test.Reflect_test_T_timp.T_timp) : _internal.reflect_test.Reflect_test_T_timp.T_timp);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T_98407.T_testCallPanic___localname___T_98407(stdgo.Go.asInterface(_i), stdgo.Go.asInterface(_i), stdgo.Go.asInterface(_i), stdgo.Go.asInterface(_i), (new _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T2_98376.T_testCallPanic___localname___T2_98376(stdgo.Go.asInterface(_i), stdgo.Go.asInterface(_i)) : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T2_98376.T_testCallPanic___localname___T2_98376), stdgo.Go.asInterface(_i), stdgo.Go.asInterface(_i), (new _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T2_98376.T_testCallPanic___localname___T2_98376(stdgo.Go.asInterface(_i), stdgo.Go.asInterface(_i)) : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T2_98376.T_testCallPanic___localname___T2_98376)) : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T_98407.T_testCallPanic___localname___T_98407))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _badCall(function():Void {
            _call(_v.field((0 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((0 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((0 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        _badMethod(function():Void {
            _call(_v.field((0 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((1 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((1 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((1 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        _badMethod(function():Void {
            _call(_v.field((1 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((2 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((2 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((2 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        _badMethod(function():Void {
            _call(_v.field((2 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((3 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((3 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((3 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        _badMethod(function():Void {
            _call(_v.field((3 : stdgo.GoInt)).elem().method((3 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _ok(function():Void {
            _call(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((5 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((5 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((5 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        _badMethod(function():Void {
            _call(_v.field((5 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((6 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((6 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((6 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((6 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((7 : stdgo.GoInt)).field((0 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((7 : stdgo.GoInt)).field((0 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((7 : stdgo.GoInt)).field((1 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        _badCall(function():Void {
            _call(_v.field((7 : stdgo.GoInt)).field((1 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
    }
