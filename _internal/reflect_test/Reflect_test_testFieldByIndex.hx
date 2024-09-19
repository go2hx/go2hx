package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFieldByIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _test in _internal.reflect_test.Reflect_test__fieldTests._fieldTests) {
            var _s = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_test._s) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _f = (_s.fieldByIndex(_test._index)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
            if (_f.name != (stdgo.Go.str())) {
                if (_test._index != null) {
                    if (_f.name != (_test._name)) {
                        _t.errorf(("%s.%s found; want %s" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_test._name));
                    };
                } else {
                    _t.errorf(("%s.%s found" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_f.name));
                };
            } else if (((_test._index.length) > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("%s.%s not found" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name));
            };
            if (_test._value != ((0 : stdgo.GoInt))) {
                var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._s).fieldByIndex(_test._index)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (_v.isValid()) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
                        } catch(_) {
                            { _0 : (0 : stdgo.GoInt), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            if (_x != (_test._value)) {
                                _t.errorf(("%s%v is %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._index), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._value));
                            };
                        } else {
                            _t.errorf(("%s%v value not an int" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._index));
                        };
                    };
                } else {
                    _t.errorf(("%s%v value not found" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._index));
                };
            };
        };
    }
