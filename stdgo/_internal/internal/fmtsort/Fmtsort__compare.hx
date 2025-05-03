package stdgo._internal.internal.fmtsort;
function _compare(_aVal:stdgo._internal.reflect.Reflect_value.Value, _bVal:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt {
        var __0 = (_aVal.type() : stdgo._internal.reflect.Reflect_type_.Type_), __1 = (_bVal.type() : stdgo._internal.reflect.Reflect_type_.Type_);
var _bType = __1, _aType = __0;
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L80"
        if (!((_aType.string() : String) == (_bType.string() : String))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L81"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L83"
        {
            final __value__ = _aVal.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __0 = (_aVal.int_() : stdgo.GoInt64), __1 = (_bVal.int_() : stdgo.GoInt64);
var _b = __1, _a = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L86"
                if ((_a < _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L88"
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L90"
                    return (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L92"
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __0 = (_aVal.uint() : stdgo.GoUInt64), __1 = (_bVal.uint() : stdgo.GoUInt64);
var _b = __1, _a = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L96"
                if ((_a < _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L98"
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L100"
                    return (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L102"
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __0 = ((_aVal.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_bVal.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _b = __1, _a = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L106"
                if ((_a < _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L108"
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L110"
                    return (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L112"
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L115"
                return stdgo._internal.internal.fmtsort.Fmtsort__floatcompare._floatCompare(_aVal.float_(), _bVal.float_());
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __0 = (_aVal.complex() : stdgo.GoComplex128), __1 = (_bVal.complex() : stdgo.GoComplex128);
var _b = __1, _a = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L118"
                {
                    var _c = (stdgo._internal.internal.fmtsort.Fmtsort__floatcompare._floatCompare((_a : stdgo.GoComplex128).real, (_b : stdgo.GoComplex128).real) : stdgo.GoInt);
                    if (_c != ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L119"
                        return _c;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L121"
                return stdgo._internal.internal.fmtsort.Fmtsort__floatcompare._floatCompare((_a : stdgo.GoComplex128).imag, (_b : stdgo.GoComplex128).imag);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __0 = (_aVal.bool_() : Bool), __1 = (_bVal.bool_() : Bool);
var _b = __1, _a = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L124"
                if (_a == (_b)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L126"
                    return (0 : stdgo.GoInt);
                } else if (_a) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L128"
                    return (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L130"
                    return (-1 : stdgo.GoInt);
                };
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __0 = (_aVal.pointer() : stdgo.GoUIntptr), __1 = (_bVal.pointer() : stdgo.GoUIntptr);
var _b = __1, _a = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L134"
                if ((_a < _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L136"
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L138"
                    return (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L140"
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L143"
                {
                    var __tmp__ = stdgo._internal.internal.fmtsort.Fmtsort__nilcompare._nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L144"
                        return _c;
                    };
                };
                var __0 = (_aVal.pointer() : stdgo.GoUIntptr), __1 = (_bVal.pointer() : stdgo.GoUIntptr);
var _bp = __1, _ap = __0;
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L147"
                if ((_ap < _bp : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L149"
                    return (-1 : stdgo.GoInt);
                } else if ((_ap > _bp : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L151"
                    return (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L153"
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L156"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _aVal.numField() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L157"
                        {
                            var _c = (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_aVal.field(_i).__copy__(), _bVal.field(_i).__copy__()) : stdgo.GoInt);
                            if (_c != ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L158"
                                return _c;
                            };
                        };
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L161"
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L163"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _aVal.len() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L164"
                        {
                            var _c = (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_aVal.index(_i).__copy__(), _bVal.index(_i).__copy__()) : stdgo.GoInt);
                            if (_c != ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L165"
                                return _c;
                            };
                        };
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L168"
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L170"
                {
                    var __tmp__ = stdgo._internal.internal.fmtsort.Fmtsort__nilcompare._nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L171"
                        return _c;
                    };
                };
                var _c = (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_aVal.elem().type()))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_bVal.elem().type()))?.__copy__()) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L174"
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L175"
                    return _c;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L177"
                return stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_aVal.elem()?.__copy__(), _bVal.elem()?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L180"
                throw stdgo.Go.toInterface((("bad type in compare: " : stdgo.GoString) + (_aType.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
        };
    }
