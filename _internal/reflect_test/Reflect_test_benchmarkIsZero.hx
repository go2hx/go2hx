package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkIsZero(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _source = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ arrayComparable : new stdgo.GoArray<_internal.reflect_test.Reflect_test_T_.T_>(4, 4, ...[for (i in 0 ... 4) ({} : _internal.reflect_test.Reflect_test_T_.T_)]), arrayIncomparable : new stdgo.GoArray<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>(4, 4, ...[for (i in 0 ... 4) ({} : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)]), structComparable : ({} : _internal.reflect_test.Reflect_test_T_.T_), structIncomparable : ({} : _internal.reflect_test.Reflect_test_T__Complex.T__Complex) } : _internal.reflect_test.Reflect_test_T__struct_101.T__struct_101))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _source.numField() : Bool), _i++, {
                var _name = (_source.type().field(_i).name?.__copy__() : stdgo.GoString);
                var _value = (_source.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _b.run(_name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _internal.reflect_test.Reflect_test__sink._sink = stdgo.Go.toInterface(_value.isZero());
                        });
                    };
                });
            });
        };
    }
