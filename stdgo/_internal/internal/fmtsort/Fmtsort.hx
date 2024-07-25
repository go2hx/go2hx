package stdgo._internal.internal.fmtsort;
private var __go2hxdoc__package : Bool;
@:structInit @:using(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_static_extension) class SortedMap {
    public var key : stdgo.Slice<stdgo._internal.reflect.Reflect.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
    public var value : stdgo.Slice<stdgo._internal.reflect.Reflect.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
    public function new(?key:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>, ?value:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SortedMap(key, value);
    }
}
function compare(_a:stdgo._internal.reflect.Reflect.Value, _b:stdgo._internal.reflect.Reflect.Value):stdgo.GoInt {
        return _compare(_a?.__copy__(), _b?.__copy__());
    }
function sort(_mapValue:stdgo._internal.reflect.Reflect.Value):stdgo.Ref<SortedMap> {
        if (_mapValue.type().kind() != ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
            return null;
        };
        var _n = (_mapValue.len() : stdgo.GoInt);
        var _key = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        var _value = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        var _iter = _mapValue.mapRange();
        while (_iter.next()) {
            _key = (_key.__append__(_iter.key()?.__copy__()));
            _value = (_value.__append__(_iter.value()?.__copy__()));
        };
        var _sorted = (stdgo.Go.setRef(({ key : _key, value : _value } : stdgo._internal.internal.fmtsort.Fmtsort.SortedMap)) : stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort.SortedMap>);
        stdgo._internal.sort.Sort.stable(stdgo.Go.asInterface(_sorted));
        return _sorted;
    }
function _compare(_aVal:stdgo._internal.reflect.Reflect.Value, _bVal:stdgo._internal.reflect.Reflect.Value):stdgo.GoInt {
        var __0 = (_aVal.type() : stdgo._internal.reflect.Reflect.Type_), __1 = (_bVal.type() : stdgo._internal.reflect.Reflect.Type_);
var _bType = __1, _aType = __0;
        if (!((_aType.string() : String) == (_bType.string() : String))) {
            return (-1 : stdgo.GoInt);
        };
        {
            final __value__ = _aVal.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var __0 = (_aVal.int_() : stdgo.GoInt64), __1 = (_bVal.int_() : stdgo.GoInt64);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var __0 = (_aVal.uint() : stdgo.GoUInt64), __1 = (_bVal.uint() : stdgo.GoUInt64);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var __0 = ((_aVal.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_bVal.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _floatCompare(_aVal.float_(), _bVal.float_());
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var __0 = (_aVal.complex() : stdgo.GoComplex128), __1 = (_bVal.complex() : stdgo.GoComplex128);
var _b = __1, _a = __0;
                {
                    var _c = (_floatCompare(_a.real, _b.real) : stdgo.GoInt);
                    if (_c != ((0 : stdgo.GoInt))) {
                        return _c;
                    };
                };
                return _floatCompare(_a.imag, _b.imag);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var __0 = (_aVal.bool_() : Bool), __1 = (_bVal.bool_() : Bool);
var _b = __1, _a = __0;
                if (_a == (_b)) {
                    return (0 : stdgo.GoInt);
                } else if (_a) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (-1 : stdgo.GoInt);
                };
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var __0 = (_aVal.pointer() : stdgo.GoUIntptr), __1 = (_bVal.pointer() : stdgo.GoUIntptr);
var _b = __1, _a = __0;
                if ((_a < _b : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_a > _b : Bool)) {
                    return (1 : stdgo.GoInt);
                } else {
                    return (0 : stdgo.GoInt);
                };
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = _nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
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
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _aVal.numField() : Bool), _i++, {
                        {
                            var _c = (_compare(_aVal.field(_i)?.__copy__(), _bVal.field(_i)?.__copy__()) : stdgo.GoInt);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _aVal.len() : Bool), _i++, {
                        {
                            var _c = (_compare(_aVal.index(_i)?.__copy__(), _bVal.index(_i)?.__copy__()) : stdgo.GoInt);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = _nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var _c = (_compare(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_aVal.elem().type()))?.__copy__(), stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_bVal.elem().type()))?.__copy__()) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    return _c;
                };
                return _compare(_aVal.elem()?.__copy__(), _bVal.elem()?.__copy__());
            } else {
                throw stdgo.Go.toInterface((("bad type in compare: " : stdgo.GoString) + (_aType.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
        };
    }
function _nilCompare(_aVal:stdgo._internal.reflect.Reflect.Value, _bVal:stdgo._internal.reflect.Reflect.Value):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        if (_aVal.isNil()) {
            if (_bVal.isNil()) {
                return { _0 : (0 : stdgo.GoInt), _1 : true };
            };
            return { _0 : (-1 : stdgo.GoInt), _1 : true };
        };
        if (_bVal.isNil()) {
            return { _0 : (1 : stdgo.GoInt), _1 : true };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt {
        if (_isNaN(_a)) {
            return (-1 : stdgo.GoInt);
        } else if (_isNaN(_b)) {
            return (1 : stdgo.GoInt);
        } else if ((_a < _b : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_a > _b : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
function _isNaN(_a:stdgo.GoFloat64):Bool {
        return _a != (_a);
    }
class SortedMap_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SortedMap>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_asInterface) class SortedMap_static_extension {
    @:keep
    static public function swap( _o:stdgo.Ref<SortedMap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _o:stdgo.Ref<SortedMap> = _o;
        {
            final __tmp__0 = _o.key[(_j : stdgo.GoInt)];
            final __tmp__1 = _o.key[(_i : stdgo.GoInt)];
            final __tmp__2 = _o.key;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _o.key;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
        {
            final __tmp__0 = _o.value[(_j : stdgo.GoInt)];
            final __tmp__1 = _o.value[(_i : stdgo.GoInt)];
            final __tmp__2 = _o.value;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _o.value;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _o:stdgo.Ref<SortedMap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _o:stdgo.Ref<SortedMap> = _o;
        return (_compare(_o.key[(_i : stdgo.GoInt)], _o.key[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function len( _o:stdgo.Ref<SortedMap>):stdgo.GoInt {
        @:recv var _o:stdgo.Ref<SortedMap> = _o;
        return (_o.key.length);
    }
}
