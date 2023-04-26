package stdgo.internal.fmtsort;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
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
    public var key : Slice<stdgo.reflect.Reflect.Value> = (null : Slice<stdgo.reflect.Reflect.Value>);
    public var value : Slice<stdgo.reflect.Reflect.Value> = (null : Slice<stdgo.reflect.Reflect.Value>);
    public function new(?key:Slice<stdgo.reflect.Reflect.Value>, ?value:Slice<stdgo.reflect.Reflect.Value>) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SortedMap(key, value);
    }
}
function compare(_a:stdgo.reflect.Reflect.Value, _b:stdgo.reflect.Reflect.Value):GoInt {
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
function sort(_mapValue:stdgo.reflect.Reflect.Value):Ref<SortedMap> {
        if (_mapValue.type().kind() != ((21u32 : stdgo.reflect.Reflect.Kind))) {
            return null;
        };
        var _n:GoInt = _mapValue.len();
        var _key = new Slice<stdgo.reflect.Reflect.Value>((0 : GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : GoInt).toBasic() > _n ? (0 : GoInt).toBasic() : _n : GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        var _value = new Slice<stdgo.reflect.Reflect.Value>((0 : GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : GoInt).toBasic() > _n ? (0 : GoInt).toBasic() : _n : GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        var _iter = _mapValue.mapRange();
        while (_iter.next()) {
            _key = (_key.__append__(_iter.key()?.__copy__()));
            _value = (_value.__append__(_iter.value()?.__copy__()));
        };
        var _sorted = (Go.setRef(({ key : _key, value : _value } : SortedMap)) : Ref<stdgo.internal.fmtsort.Fmtsort.SortedMap>);
        stdgo.sort.Sort.stable(Go.asInterface(_sorted));
        return _sorted;
    }
/**
    // compare compares two values of the same type. It returns -1, 0, 1
    // according to whether a > b (1), a == b (0), or a < b (-1).
    // If the types differ, it returns -1.
    // See the comment on Sort for the comparison rules.
**/
private function _compare(_aVal:stdgo.reflect.Reflect.Value, _bVal:stdgo.reflect.Reflect.Value):GoInt {
        var __0:stdgo.reflect.Reflect.Type = _aVal.type(), __1:stdgo.reflect.Reflect.Type = _bVal.type(), _bType:stdgo.reflect.Reflect.Type = __1, _aType:stdgo.reflect.Reflect.Type = __0;
        if (!((_aType.string() : String) == (_bType.string() : String))) {
            return (-1 : GoInt);
        };
        {
            final __value__ = _aVal.kind();
            if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:GoInt64 = _aVal.int_(), __1:GoInt64 = _bVal.int_(), _b:GoInt64 = __1, _a:GoInt64 = __0;
                if (_a < _b) {
                    return (-1 : GoInt);
                } else if (_a > _b) {
                    return (1 : GoInt);
                } else {
                    return (0 : GoInt);
                };
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:GoUInt64 = _aVal.uint(), __1:GoUInt64 = _bVal.uint(), _b:GoUInt64 = __1, _a:GoUInt64 = __0;
                if (_a < _b) {
                    return (-1 : GoInt);
                } else if (_a > _b) {
                    return (1 : GoInt);
                } else {
                    return (0 : GoInt);
                };
            } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:GoString = (_aVal.string() : GoString), __1:GoString = (_bVal.string() : GoString), _b:GoString = __1, _a:GoString = __0;
                if (_a < _b) {
                    return (-1 : GoInt);
                } else if (_a > _b) {
                    return (1 : GoInt);
                } else {
                    return (0 : GoInt);
                };
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                return _floatCompare(_aVal.float_(), _bVal.float_());
            } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:GoComplex128 = _aVal.complex(), __1:GoComplex128 = _bVal.complex(), _b:GoComplex128 = __1, _a:GoComplex128 = __0;
                {
                    var _c:GoInt = _floatCompare(_a.real, _b.real);
                    if (_c != ((0 : GoInt))) {
                        return _c;
                    };
                };
                return _floatCompare(_a.imag, _b.imag);
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:Bool = _aVal.bool_(), __1:Bool = _bVal.bool_(), _b:Bool = __1, _a:Bool = __0;
                if (_a == (_b)) {
                    return (0 : GoInt);
                } else if (_a) {
                    return (1 : GoInt);
                } else {
                    return (-1 : GoInt);
                };
            } else if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo.reflect.Reflect.Kind))) {
                var __0:GoUIntptr = _aVal.pointer(), __1:GoUIntptr = _bVal.pointer(), _b:GoUIntptr = __1, _a:GoUIntptr = __0;
                if (_a < _b) {
                    return (-1 : GoInt);
                } else if (_a > _b) {
                    return (1 : GoInt);
                } else {
                    return (0 : GoInt);
                };
            } else if (__value__ == ((18u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = _nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var __0:GoUIntptr = _aVal.pointer(), __1:GoUIntptr = _bVal.pointer(), _bp:GoUIntptr = __1, _ap:GoUIntptr = __0;
                if (_ap < _bp) {
                    return (-1 : GoInt);
                } else if (_ap > _bp) {
                    return (1 : GoInt);
                } else {
                    return (0 : GoInt);
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _aVal.numField(), _i++, {
                        {
                            var _c:GoInt = _compare(_aVal.field(_i)?.__copy__(), _bVal.field(_i)?.__copy__());
                            if (_c != ((0 : GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : GoInt);
            } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _aVal.len(), _i++, {
                        {
                            var _c:GoInt = _compare(_aVal.index(_i)?.__copy__(), _bVal.index(_i)?.__copy__());
                            if (_c != ((0 : GoInt))) {
                                return _c;
                            };
                        };
                    });
                };
                return (0 : GoInt);
            } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = _nilCompare(_aVal?.__copy__(), _bVal?.__copy__()), _c:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _c;
                    };
                };
                var _c:GoInt = _compare(stdgo.reflect.Reflect.valueOf(Go.toInterface(_aVal.elem().type()))?.__copy__(), stdgo.reflect.Reflect.valueOf(Go.toInterface(_bVal.elem().type()))?.__copy__());
                if (_c != ((0 : GoInt))) {
                    return _c;
                };
                return _compare(_aVal.elem()?.__copy__(), _bVal.elem()?.__copy__());
            } else {
                throw Go.toInterface(("bad type in compare: " : GoString) + (_aType.string() : GoString));
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
private function _nilCompare(_aVal:stdgo.reflect.Reflect.Value, _bVal:stdgo.reflect.Reflect.Value):{ var _0 : GoInt; var _1 : Bool; } {
        if (_aVal.isNil()) {
            if (_bVal.isNil()) {
                return { _0 : (0 : GoInt), _1 : true };
            };
            return { _0 : (-1 : GoInt), _1 : true };
        };
        if (_bVal.isNil()) {
            return { _0 : (1 : GoInt), _1 : true };
        };
        return { _0 : (0 : GoInt), _1 : false };
    }
/**
    // floatCompare compares two floating-point values. NaNs compare low.
**/
private function _floatCompare(_a:GoFloat64, _b:GoFloat64):GoInt {
        if (_isNaN(_a)) {
            return (-1 : GoInt);
        } else if (_isNaN(_b)) {
            return (1 : GoInt);
        } else if (_a < _b) {
            return (-1 : GoInt);
        } else if (_a > _b) {
            return (1 : GoInt);
        };
        return (0 : GoInt);
    }
private function _isNaN(_a:GoFloat64):Bool {
        return _a != (_a);
    }
class SortedMap_asInterface {
    @:keep
    public dynamic function swap(_i:GoInt, _j:GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:GoInt, _j:GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SortedMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.fmtsort.Fmtsort.SortedMap_asInterface) class SortedMap_static_extension {
    @:keep
    static public function swap( _o:Ref<SortedMap>, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = _o.key[(_j : GoInt)];
            final __tmp__1 = _o.key[(_i : GoInt)];
            _o.key[(_i : GoInt)] = __tmp__0;
            _o.key[(_j : GoInt)] = __tmp__1;
        };
        {
            final __tmp__0 = _o.value[(_j : GoInt)];
            final __tmp__1 = _o.value[(_i : GoInt)];
            _o.value[(_i : GoInt)] = __tmp__0;
            _o.value[(_j : GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _o:Ref<SortedMap>, _i:GoInt, _j:GoInt):Bool {
        return _compare(_o.key[(_i : GoInt)], _o.key[(_j : GoInt)]) < (0 : GoInt);
    }
    @:keep
    static public function len( _o:Ref<SortedMap>):GoInt {
        return (_o.key.length);
    }
}
