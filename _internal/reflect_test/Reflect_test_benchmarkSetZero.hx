package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkSetZero(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _source = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ bool_ : false, int_ : (0 : stdgo.GoInt64), uint : (0 : stdgo.GoUInt64), float_ : (0 : stdgo.GoFloat64), complex : new stdgo.GoComplex128(0, 0), array : new stdgo.GoArray<stdgo._internal.reflect.Reflect_Value.Value>(4, 4, ...[for (i in 0 ... 4) ({} : stdgo._internal.reflect.Reflect_Value.Value)]), chan : (null : stdgo.Chan<stdgo._internal.reflect.Reflect_Value.Value>), func : null, interface_ : (null : _internal.reflect_test.Reflect_test_T__interface_4.T__interface_4), map_ : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>), pointer : (null : stdgo.Ref<stdgo._internal.reflect.Reflect_Value.Value>), slice : (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>), string : ("" : stdgo.GoString), struct_ : ({} : stdgo._internal.reflect.Reflect_Value.Value) } : _internal.reflect_test.Reflect_test_T__struct_102.T__struct_102)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_102.T__struct_102>)))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _source.numField() : Bool), _i++, {
                var _name = (_source.type().field(_i).name?.__copy__() : stdgo.GoString);
                var _value = (_source.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _zero = (stdgo._internal.reflect.Reflect_zero.zero(_value.type())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _b.run((_name + ("/Direct" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _value.setZero();
                        });
                    };
                });
                _b.run((_name + ("/CachedZero" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _value.set(_zero?.__copy__());
                        });
                    };
                });
                _b.run((_name + ("/NewZero" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _value.set(stdgo._internal.reflect.Reflect_zero.zero(_value.type())?.__copy__());
                        });
                    };
                });
            });
        };
    }
