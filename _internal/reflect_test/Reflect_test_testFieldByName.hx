package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFieldByName(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _test in _internal.reflect_test.Reflect_test__fieldTests._fieldTests) {
            var _s = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_test._s) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var __tmp__ = _s.fieldByName(_test._name?.__copy__()), _f:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                if (_test._index != null) {
                    if ((_f.index.length) != ((_test._index.length))) {
                        _t.errorf(("%s.%s depth %d; want %d: %v vs %v" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface((_f.index.length)), stdgo.Go.toInterface((_test._index.length)), stdgo.Go.toInterface(_f.index), stdgo.Go.toInterface(_test._index));
                    } else {
                        for (_i => _x in _f.index) {
                            if (_x != (_test._index[(_i : stdgo.GoInt)])) {
                                _t.errorf(("%s.%s.Index[%d] is %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._index[(_i : stdgo.GoInt)]));
                            };
                        };
                    };
                } else {
                    _t.errorf(("%s.%s found" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_f.name));
                };
            } else if (((_test._index.length) > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("%s.%s not found" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name));
            };
            if (_test._value != ((0 : stdgo.GoInt))) {
                var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._s).fieldByName(_test._name?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (_v.isValid()) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
                        } catch(_) {
                            { _0 : (0 : stdgo.GoInt), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            if (_x != (_test._value)) {
                                _t.errorf(("%s.%s is %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._value));
                            };
                        } else {
                            _t.errorf(("%s.%s value not an int" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name));
                        };
                    };
                } else {
                    _t.errorf(("%s.%s value not found" : stdgo.GoString), stdgo.Go.toInterface(_s.name()), stdgo.Go.toInterface(_test._name));
                };
            };
        };
    }
