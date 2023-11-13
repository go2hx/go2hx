package stdgo.internal.fmtsort;
/**
    // Package fmtsort provides a general stable ordering mechanism
    // for maps, on behalf of the fmt and text/template packages.
    // It is not guaranteed to be efficient and works only for types
    // that are valid map keys.
**/
private var __go2hxdoc__package : Bool;
/**
    // SortedMap represents a map's keys and values. The keys and values are
    // aligned in index order: Value[i] is the value in the map corresponding to Key[i].
    
    
**/
@:structInit @:using(stdgo.internal.fmtsort.Fmtsort.SortedMap_static_extension) class SortedMap {
    public var key : stdgo.Slice<stdgo.reflect.Reflect.Value> = (null : stdgo.Slice<stdgo.reflect.Reflect.Value>);
    public var value : stdgo.Slice<stdgo.reflect.Reflect.Value> = (null : stdgo.Slice<stdgo.reflect.Reflect.Value>);
    public function new(?key:stdgo.Slice<stdgo.reflect.Reflect.Value>, ?value:stdgo.Slice<stdgo.reflect.Reflect.Value>) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SortedMap(key, value);
    }
}
function compare(_a:stdgo.reflect.Reflect.Value, _b:stdgo.reflect.Reflect.Value):stdgo.StdGoTypes.GoInt {
        return _compare(_a?.__copy__(), _b?.__copy__());
    }
/**
    // Sort accepts a map and returns a SortedMap that has the same keys and
    // values but in a stable sorted order according to the keys, modulo issues
    // raised by unorderable key values such as NaNs.
    //
    // The ordering rules are more general than with Go's < operator:
    //
    //   - when applicable, nil compares low
    //   - ints, floats, and strings order by <
    //   - NaN compares less than non-NaN floats
    //   - bool compares false before true
    //   - complex compares real, then imag
    //   - pointers compare by machine address
    //   - channel values compare by machine address
    //   - structs compare each field in turn
    //   - arrays compare each element in turn.
    //     Otherwise identical arrays compare by length.
    //   - interface values compare first by reflect.Type describing the concrete type
    //     and then by concrete value as described in the previous rules.
**/
function sort(_mapValue:stdgo.reflect.Reflect.Value):stdgo.StdGoTypes.Ref<SortedMap> {
        if (_mapValue.type().kind() != ((21u32 : stdgo.reflect.Reflect.Kind))) {
            return null;
        };
        var _n:stdgo.StdGoTypes.GoInt = _mapValue.len();
        var _key = new stdgo.Slice<stdgo.reflect.Reflect.Value>((0 : stdgo.StdGoTypes.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.StdGoTypes.GoInt).toBasic() > _n ? (0 : stdgo.StdGoTypes.GoInt).toBasic() : _n : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        var _value = new stdgo.Slice<stdgo.reflect.Reflect.Value>((0 : stdgo.StdGoTypes.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.StdGoTypes.GoInt).toBasic() > _n ? (0 : stdgo.StdGoTypes.GoInt).toBasic() : _n : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        var _iter = _mapValue.mapRange();
        while (_iter.next()) {
            _key = (_key.__append__(_iter.key()?.__copy__()));
            _value = (_value.__append__(_iter.value()?.__copy__()));
        };
        var _sorted = (stdgo.Go.setRef(({ key : _key, value : _value } : SortedMap)) : stdgo.StdGoTypes.Ref<stdgo.internal.fmtsort.Fmtsort.SortedMap>);
        stdgo.sort.Sort.stable(stdgo.Go.asInterface(_sorted));
        return _sorted;
    }
/**
    // compare compares two values of the same type. It returns -1, 0, 1
    // according to whether a > b (1), a == b (0), or a < b (-1).
    // If the types differ, it returns -1.
    // See the comment on Sort for the comparison rules.
**/
function _compare(_aVal:stdgo.reflect.Reflect.Value, _bVal:stdgo.reflect.Reflect.Value):stdgo.StdGoTypes.GoInt {
        var __0:stdgo.reflect.Reflect.Type = _aVal.type(), __1:stdgo.reflect.Reflect.Type = _bVal.type(), _bType:stdgo.reflect.Reflect.Type = __1, _aType:stdgo.reflect.Reflect.Type = __0;
        if (!((_aType.string() : String) == (_bType.string() : String))) {
            return (-1 : stdgo.StdGoTypes.GoInt);
        };
        {
            final __value__ = _aVal.kind();
            if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:stdgo.StdGoTypes.GoInt64 = _aVal.int_(), __1:stdgo.StdGoTypes.GoInt64 = _bVal.int_(), _b:stdgo.StdGoTypes.GoInt64 = __1, _a:stdgo.StdGoTypes.GoInt64 = __0;
                if (_a < _b) {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                } else if (_a > _b) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:stdgo.StdGoTypes.GoUInt64 = _aVal.uint(), __1:stdgo.StdGoTypes.GoUInt64 = _bVal.uint(), _b:stdgo.StdGoTypes.GoUInt64 = __1, _a:stdgo.StdGoTypes.GoUInt64 = __0;
                if (_a < _b) {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                } else if (_a > _b) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
            } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:stdgo.GoString = (_aVal.string() : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = (_bVal.string() : stdgo.GoString)?.__copy__(), _b:stdgo.GoString = __1, _a:stdgo.GoString = __0;
                if (_a < _b) {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                } else if (_a > _b) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                return _floatCompare(_aVal.float_(), _bVal.float_());
            } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:stdgo.StdGoTypes.GoComplex128 = _aVal.complex(), __1:stdgo.StdGoTypes.GoComplex128 = _bVal.complex(), _b:stdgo.StdGoTypes.GoComplex128 = __1, _a:stdgo.StdGoTypes.GoComplex128 = __0;
                {
                    var _c:stdgo.StdGoTypes.GoInt = _floatCompare(_a.real, _b.real);
                    if (_c != ((0 : stdgo.StdGoTypes.GoInt))) {
                        return _c;
                    };
                };
                return _floatCompare(_a.imag, _b.imag);
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:Bool = _aVal.bool_(), __1:Bool = _bVal.bool_(), _b:Bool = __1, _a:Bool = __0;
                if (_a == (_b)) {
                    return (0 : stdgo.StdGoTypes.GoInt);
                } else if (_a) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                };
            } else if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:stdgo.StdGoTypes.GoUIntptr = _aVal.pointer(), __1:stdgo.StdGoTypes.GoUIntptr = _bVal.pointer(), _b:stdgo.StdGoTypes.GoUIntptr = __1, _a:stdgo.StdGoTypes.GoUIntptr = __0;
                if (_a < _b) {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                } else if (_a > _b) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
            } else if (__value__ == ((18u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = _nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var __0:stdgo.StdGoTypes.GoUIntptr = _aVal.pointer(), __1:stdgo.StdGoTypes.GoUIntptr = _bVal.pointer(), _bp:stdgo.StdGoTypes.GoUIntptr = __1, _ap:stdgo.StdGoTypes.GoUIntptr = __0;
                if (_ap < _bp) {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                } else if (_ap > _bp) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _aVal.numField(), _i++, {
                        {
                            var _c:stdgo.StdGoTypes.GoInt = _compare(_aVal.field(_i)?.__copy__(), _bVal.field(_i)?.__copy__());
                            if (_c != ((0 : stdgo.StdGoTypes.GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _aVal.len(), _i++, {
                        {
                            var _c:stdgo.StdGoTypes.GoInt = _compare(_aVal.index(_i)?.__copy__(), _bVal.index(_i)?.__copy__());
                            if (_c != ((0 : stdgo.StdGoTypes.GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = _nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var _c:stdgo.StdGoTypes.GoInt = _compare(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_aVal.elem().type()))?.__copy__(), stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_bVal.elem().type()))?.__copy__());
                if (_c != ((0 : stdgo.StdGoTypes.GoInt))) {
                    return _c;
                };
                return _compare(_aVal.elem()?.__copy__(), _bVal.elem()?.__copy__());
            } else {
                throw stdgo.Go.toInterface(("bad type in compare: " : stdgo.GoString) + (_aType.string() : stdgo.GoString)?.__copy__());
            };
        };
    }
/**
    // nilCompare checks whether either value is nil. If not, the boolean is false.
    // If either value is nil, the boolean is true and the integer is the comparison
    // value. The comparison is defined to be 0 if both are nil, otherwise the one
    // nil value compares low. Both arguments must represent a chan, func,
    // interface, map, pointer, or slice.
**/
function _nilCompare(_aVal:stdgo.reflect.Reflect.Value, _bVal:stdgo.reflect.Reflect.Value):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } {
        if (_aVal.isNil()) {
            if (_bVal.isNil()) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : true };
            };
            return { _0 : (-1 : stdgo.StdGoTypes.GoInt), _1 : true };
        };
        if (_bVal.isNil()) {
            return { _0 : (1 : stdgo.StdGoTypes.GoInt), _1 : true };
        };
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false };
    }
/**
    // floatCompare compares two floating-point values. NaNs compare low.
**/
function _floatCompare(_a:stdgo.StdGoTypes.GoFloat64, _b:stdgo.StdGoTypes.GoFloat64):stdgo.StdGoTypes.GoInt {
        if (_isNaN(_a)) {
            return (-1 : stdgo.StdGoTypes.GoInt);
        } else if (_isNaN(_b)) {
            return (1 : stdgo.StdGoTypes.GoInt);
        } else if (_a < _b) {
            return (-1 : stdgo.StdGoTypes.GoInt);
        } else if (_a > _b) {
            return (1 : stdgo.StdGoTypes.GoInt);
        };
        return (0 : stdgo.StdGoTypes.GoInt);
    }
function _isNaN(_a:stdgo.StdGoTypes.GoFloat64):Bool {
        return _a != (_a);
    }
class SortedMap_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SortedMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.fmtsort.Fmtsort.SortedMap_asInterface) class SortedMap_static_extension {
    @:keep
    static public function swap( _o:stdgo.StdGoTypes.Ref<SortedMap>, _i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _o:stdgo.StdGoTypes.Ref<SortedMap> = _o;
        {
            final __tmp__0 = _o.key[(_j : stdgo.StdGoTypes.GoInt)];
            final __tmp__1 = _o.key[(_i : stdgo.StdGoTypes.GoInt)];
            _o.key[(_i : stdgo.StdGoTypes.GoInt)] = __tmp__0;
            _o.key[(_j : stdgo.StdGoTypes.GoInt)] = __tmp__1;
        };
        {
            final __tmp__0 = _o.value[(_j : stdgo.StdGoTypes.GoInt)];
            final __tmp__1 = _o.value[(_i : stdgo.StdGoTypes.GoInt)];
            _o.value[(_i : stdgo.StdGoTypes.GoInt)] = __tmp__0;
            _o.value[(_j : stdgo.StdGoTypes.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _o:stdgo.StdGoTypes.Ref<SortedMap>, _i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
        @:recv var _o:stdgo.StdGoTypes.Ref<SortedMap> = _o;
        return _compare(_o.key[(_i : stdgo.StdGoTypes.GoInt)], _o.key[(_j : stdgo.StdGoTypes.GoInt)]) < (0 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function len( _o:stdgo.StdGoTypes.Ref<SortedMap>):stdgo.StdGoTypes.GoInt {
        @:recv var _o:stdgo.StdGoTypes.Ref<SortedMap> = _o;
        return (_o.key.length);
    }
}
