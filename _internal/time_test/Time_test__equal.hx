package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _equal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f1:stdgo._internal.reflect.Reflect_Value.Value, _f2:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        {
            final __value__ = _f1.type().kind();
            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_f1.len() != (_f2.len())) {
                    return false;
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _f1.len() : Bool), _i++, {
                        if (!_internal.time_test.Time_test__equal._equal(_t, _f1.index(_i)?.__copy__(), _f2.index(_i)?.__copy__())) {
                            return false;
                        };
                    });
                };
                return true;
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _nf = (_f1.type().numField() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _nf : Bool), _i++, {
                        if (!_internal.time_test.Time_test__equal._equal(_t, _f1.field(_i)?.__copy__(), _f2.field(_i)?.__copy__())) {
                            return false;
                        };
                    });
                };
                return true;
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return (_f1.string() : stdgo.GoString) == ((_f2.string() : stdgo.GoString));
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _f1.bool_() == (_f2.bool_());
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _f1.int_() == (_f2.int_());
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return _f1.uint() == (_f2.uint());
            } else {
                _t.errorf(("test internal error: unsupported kind %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f1.type().kind())));
                return true;
            };
        };
    }
