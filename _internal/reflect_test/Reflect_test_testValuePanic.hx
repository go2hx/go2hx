package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValuePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _vo = (stdgo._internal.reflect.Reflect_valueOf.valueOf : stdgo.AnyInterface -> stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect.Value.Addr of unaddressable value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoInt))).addr();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Bool on float64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).bool_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Bytes on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).bytes();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Call on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(true)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.CallSlice on int Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoInt))).callSlice((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Close on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).close();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Complex on float64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).complex();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Elem on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(false)).elem();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Field on int Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoInt))).field((0 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Float on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).float_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Index on float64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).index((0 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Int on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(false)).int_();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.IsNil on int Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoInt))).isNil();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Len on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(false)).len();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.MapIndex on float64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).mapIndex(_vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64)))?.__copy__());
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.MapKeys on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).mapKeys();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.MapRange on int Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoInt))).mapRange();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Method on zero Value" : stdgo.GoString), function():Void {
            _vo((null : stdgo.AnyInterface)).method((0 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.NumField on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).numField();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.NumMethod on zero Value" : stdgo.GoString), function():Void {
            _vo((null : stdgo.AnyInterface)).numMethod();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.OverflowComplex on float64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).overflowComplex(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.OverflowFloat on int64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0i64 : stdgo.GoInt64))).overflowFloat((0 : stdgo.GoFloat64));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.OverflowInt on uint64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0i64 : stdgo.GoUInt64))).overflowInt((0i64 : stdgo.GoInt64));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.OverflowUint on complex64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex64))).overflowUint((0i64 : stdgo.GoUInt64));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Recv on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).recv();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Send on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(true)).send(_vo(stdgo.Go.toInterface(true))?.__copy__());
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("value of type string is not assignable to type bool" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(false))).elem().set(_vo(stdgo.Go.toInterface(stdgo.Go.str()))?.__copy__());
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetBool on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString)))).elem().setBool(false);
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect.Value.SetBytes using unaddressable value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).setBytes((null : stdgo.Slice<stdgo.GoUInt8>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetCap on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString)))).elem().setCap((0 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetComplex on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString)))).elem().setComplex(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetFloat on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString)))).elem().setFloat((0 : stdgo.GoFloat64));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetInt on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString)))).elem().setInt((0i64 : stdgo.GoInt64));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetLen on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString)))).elem().setLen((0 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.SetString on int Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt)))).elem().setString(stdgo.Go.str()?.__copy__());
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect.Value.SetUint using unaddressable value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).setUint((0i64 : stdgo.GoUInt64));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Slice on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(true)).slice((1 : stdgo.GoInt), (2 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Slice3 on int Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoInt))).slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.TryRecv on bool Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(true)).tryRecv();
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.TrySend on string Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface(stdgo.Go.str())).trySend(_vo(stdgo.Go.toInterface(stdgo.Go.str()))?.__copy__());
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("call of reflect.Value.Uint on float64 Value" : stdgo.GoString), function():Void {
            _vo(stdgo.Go.toInterface((0 : stdgo.GoFloat64))).uint();
        });
    }
