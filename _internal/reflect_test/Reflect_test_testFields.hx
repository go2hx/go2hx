package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _test in _internal.reflect_test.Reflect_test__fieldsTests._fieldsTests) {
            var _test = ({
                final x = _test;
                ({ _testName : x._testName?.__copy__(), _val : x._val, _expect : x._expect } : _internal.reflect_test.Reflect_test_T__struct_106.T__struct_106);
            } : _internal.reflect_test.Reflect_test_T__struct_106.T__struct_106);
            _t.run(_test._testName?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_test._val) : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _fields = stdgo._internal.reflect.Reflect_visibleFields.visibleFields(_typ);
                {
                    var __0 = (_fields.length : stdgo.GoInt), __1 = (_test._expect.length : stdgo.GoInt);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.fatalf(("unexpected field count; got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                for (_j => _field in _fields) {
                    var _expect = (_test._expect[(_j : stdgo.GoInt)] : _internal.reflect_test.Reflect_test_T_structField.T_structField);
                    _t.logf(("field %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_expect._name));
                    var _gotField = (_typ.fieldByIndex(_field.index)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                    _gotField.index = _field.index;
                    var _expectField = (_typ.fieldByIndex(_expect._index)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                    _expectField.index = _expect._index;
                    if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_gotField)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expectField)))) {
                        _t.fatalf(("unexpected field result\ngot %#v\nwant %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotField)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expectField)));
                    };
                    var __tmp__ = _typ.fieldByName(_expect._name?.__copy__()), _gotField1:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        _t.fatalf(("field %q not accessible by name" : stdgo.GoString), stdgo.Go.toInterface(_expect._name));
                    };
                    if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_gotField1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expectField)))) {
                        _t.fatalf(("unexpected FieldByName result; got %#v want %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotField1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expectField)));
                    };
                };
            });
        };
    }
