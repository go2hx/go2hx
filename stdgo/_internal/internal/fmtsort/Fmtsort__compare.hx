package stdgo._internal.internal.fmtsort;
function _compare(_aVal:stdgo._internal.reflect.Reflect_Value.Value, _bVal:stdgo._internal.reflect.Reflect_Value.Value):stdgo.GoInt {
        var __0 = (_aVal.type() : stdgo._internal.reflect.Reflect_Type_.Type_), __1 = (_bVal.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
var _bType = __1, _aType = __0;
        if (!((_aType.string() : String) == (_bType.string() : String))) {
            return (-1 : stdgo.GoInt);
        };
        {
            final __value__ = _aVal.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var __0 = (_aVal.int_() : stdgo.GoInt64), __1 = (_bVal.int_() : stdgo.GoInt64);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var __0 = (_aVal.uint() : stdgo.GoUInt64), __1 = (_bVal.uint() : stdgo.GoUInt64);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var __0 = ((_aVal.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_bVal.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.internal.fmtsort.Fmtsort__floatCompare._floatCompare(_aVal.float_(), _bVal.float_());
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var __0 = (_aVal.complex() : stdgo.GoComplex128), __1 = (_bVal.complex() : stdgo.GoComplex128);
var _b = __1, _a = __0;
                {
                    var _c = (stdgo._internal.internal.fmtsort.Fmtsort__floatCompare._floatCompare(_a.real, _b.real) : stdgo.GoInt);
                    if (_c != ((0 : stdgo.GoInt))) {
                        return _c;
                    };
                };
                return stdgo._internal.internal.fmtsort.Fmtsort__floatCompare._floatCompare(_a.imag, _b.imag);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var __0 = (_aVal.bool_() : Bool), __1 = (_bVal.bool_() : Bool);
var _b = __1, _a = __0;
                if (_a == (_b)) {
                    return (0 : stdgo.GoInt);
                } else if (_a) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (-1 : stdgo.GoInt);
                };
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var __0 = (_aVal.pointer() : stdgo.GoUIntptr), __1 = (_bVal.pointer() : stdgo.GoUIntptr);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    var __tmp__ = stdgo._internal.internal.fmtsort.Fmtsort__nilCompare._nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var __0 = (_aVal.pointer() : stdgo.GoUIntptr), __1 = (_bVal.pointer() : stdgo.GoUIntptr);
var _bp = __1, _ap = __0;
                if ((_ap < _bp : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_ap > _bp : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _aVal.numField() : Bool), _i++, {
                        {
                            var _c = (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_aVal.field(_i)?.__copy__(), _bVal.field(_i)?.__copy__()) : stdgo.GoInt);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _aVal.len() : Bool), _i++, {
                        {
                            var _c = (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_aVal.index(_i)?.__copy__(), _bVal.index(_i)?.__copy__()) : stdgo.GoInt);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    var __tmp__ = stdgo._internal.internal.fmtsort.Fmtsort__nilCompare._nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var _c = (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_aVal.elem().type()))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_bVal.elem().type()))?.__copy__()) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    return _c;
                };
                return stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_aVal.elem()?.__copy__(), _bVal.elem()?.__copy__());
            } else {
                throw stdgo.Go.toInterface((("bad type in compare: " : stdgo.GoString) + (_aType.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
        };
    }