package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _valueToString(_val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.GoString {
        var _str:stdgo.GoString = ("" : stdgo.GoString);
        if (!_val.isValid()) {
            return ("<zero Value>" : stdgo.GoString);
        };
        var _typ = (_val.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            final __value__ = _val.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatInt.formatInt(_val.int_(), (10 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatUint.formatUint(_val.uint(), (10 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_val.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _c = (_val.complex() : stdgo.GoComplex128);
                return (((stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_c.real, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt)) + ("+" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_c.imag, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("i" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return (_val.string() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_val.bool_()) {
                    return ("true" : stdgo.GoString);
                } else {
                    return ("false" : stdgo.GoString);
                };
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _v = (_val?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _str = ((_typ.string() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                if (_v.isNil()) {
                    _str = (_str + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                } else {
                    _str = (_str + ((("&" : stdgo.GoString) + _internal.reflect_test.Reflect_test__valueToString._valueToString(_v.elem()?.__copy__())?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _str = (_str + ((")" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                return _str?.__copy__();
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _v = (_val?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _str = (_str + ((_typ.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _v.len() : Bool), _i++, {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _str = (_str + (_internal.reflect_test.Reflect_test__valueToString._valueToString(_v.index(_i)?.__copy__()))?.__copy__() : stdgo.GoString);
                    });
                };
                _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                return _str?.__copy__();
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _t = (_typ : stdgo._internal.reflect.Reflect_Type_.Type_);
                _str = (_t.string() : stdgo.GoString)?.__copy__();
                _str = (_str + (("{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("<can\'t iterate on maps>" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                return _str?.__copy__();
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _str = (_typ.string() : stdgo.GoString)?.__copy__();
                return _str?.__copy__();
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _t = (_typ : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _v = (_val?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _str = (_str + ((_t.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_v.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _str = (_str + (_internal.reflect_test.Reflect_test__valueToString._valueToString(_v.field(_i)?.__copy__()))?.__copy__() : stdgo.GoString);
                    });
                };
                _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                return _str?.__copy__();
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return ((((_typ.string() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.reflect_test.Reflect_test__valueToString._valueToString(_val.elem()?.__copy__())?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _v = (_val?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                return ((((_typ.string() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatUint.formatUint((_v.pointer() : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                throw stdgo.Go.toInterface((("valueToString: can\'t print type " : stdgo.GoString) + (_typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
        };
    }
