package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValue_EqualNonComparable(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _invalid:stdgo._internal.reflect.Reflect_Value.Value = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
        var _values:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(11, 11, ...[
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(((null : () -> Void)))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function():Void {}))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((new _internal.reflect_test.Reflect_test_NonComparableStruct.NonComparableStruct() : _internal.reflect_test.Reflect_test_NonComparableStruct.NonComparableStruct))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>(0, 0, ...[]) : stdgo.GoArray<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>)))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<() -> Void>(0, 0, ...[]) : stdgo.GoArray<() -> Void>)))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((new stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_95.T__struct_95>(1, 1, ...[({ i : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({ i : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_T__struct_95.T__struct_95)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_95.T__struct_95>))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((new stdgo.GoArray<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((new stdgo.GoArray<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>))]) : stdgo.GoArray<stdgo.AnyInterface>))]) : stdgo.GoArray<stdgo.AnyInterface>))))?.__copy__()].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        for (__6 => _value in _values) {
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("are not comparable" : stdgo.GoString), function():Void {
                _value._typ_.equal(_value?.__copy__());
            });
            {
                var _r = (_value._typ_.equal(_invalid?.__copy__()) : Bool);
                if (_r != (false)) {
                    _t.errorf(("%s == invalid got %t, want false" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_r));
                };
            };
        };
    }
