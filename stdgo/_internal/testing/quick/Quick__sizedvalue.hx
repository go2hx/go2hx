package stdgo._internal.testing.quick;
function _sizedValue(_t:stdgo._internal.reflect.Reflect_type_.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _size:stdgo.GoInt):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } {
        var _value = ({} : stdgo._internal.reflect.Reflect_value.Value), _ok = false;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_zero.zero(_t).interface_() : stdgo._internal.testing.quick.Quick_generator.Generator)) : stdgo._internal.testing.quick.Quick_generator.Generator), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.testing.quick.Quick_generator.Generator), _1 : false };
            }, _m = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : _m.generate(_rand, _size)?.__copy__(), _1 : true };
                    _value = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_new_.new_(_t).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        {
            var _concrete = (_t : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                final __value__ = _concrete.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setBool((@:check2r _rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt)));
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setFloat((stdgo._internal.testing.quick.Quick__randfloat32._randFloat32(_rand) : stdgo.GoFloat64));
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setFloat(stdgo._internal.testing.quick.Quick__randfloat64._randFloat64(_rand));
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setComplex(new stdgo.GoComplex128((stdgo._internal.testing.quick.Quick__randfloat32._randFloat32(_rand) : stdgo.GoFloat64), (stdgo._internal.testing.quick.Quick__randfloat32._randFloat32(_rand) : stdgo.GoFloat64)));
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setComplex(new stdgo.GoComplex128(stdgo._internal.testing.quick.Quick__randfloat64._randFloat64(_rand), stdgo._internal.testing.quick.Quick__randfloat64._randFloat64(_rand)));
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand));
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand));
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand));
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand));
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand));
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randint64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _numElems = (@:check2r _rand.intn(_size) : stdgo.GoInt);
                    _v.set(stdgo._internal.reflect.Reflect_makemap.makeMap(_concrete)?.__copy__());
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _numElems : Bool)) {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedvalue._sizedValue(_concrete.key(), _rand, _size), _key:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok1:Bool = __tmp__._1;
var __tmp__ = stdgo._internal.testing.quick.Quick__sizedvalue._sizedValue(_concrete.elem(), _rand, _size), _value:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok2:Bool = __tmp__._1;
if ((!_ok1 || !_ok2 : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                                    _value = __tmp__._0;
                                    _ok = __tmp__._1;
                                    __tmp__;
                                };
                            };
_v.setMapIndex(_key.__copy__(), _value.__copy__());
                            _i++;
                        };
                    };
                } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    if (@:check2r _rand.intn(_size) == ((0 : stdgo.GoInt))) {
                        _v.setZero();
                    } else {
                        var __tmp__ = stdgo._internal.testing.quick.Quick__sizedvalue._sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return {
                                final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                                _value = __tmp__._0;
                                _ok = __tmp__._1;
                                __tmp__;
                            };
                        };
                        _v.set(stdgo._internal.reflect.Reflect_new_.new_(_concrete.elem())?.__copy__());
                        _v.elem().set(_elem?.__copy__());
                    };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _numElems = (@:check2r _rand.intn(_size) : stdgo.GoInt);
                    var _sizeLeft = (_size - _numElems : stdgo.GoInt);
                    _v.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_concrete, _numElems, _numElems)?.__copy__());
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _numElems : Bool)) {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedvalue._sizedValue(_concrete.elem(), _rand, _sizeLeft), _elem:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                                    _value = __tmp__._0;
                                    _ok = __tmp__._1;
                                    __tmp__;
                                };
                            };
_v.index(_i).set(_elem.__copy__());
                            _i++;
                        };
                    };
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _v.len() : Bool)) {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedvalue._sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                                    _value = __tmp__._0;
                                    _ok = __tmp__._1;
                                    __tmp__;
                                };
                            };
_v.index(_i).set(_elem.__copy__());
                            _i++;
                        };
                    };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _numChars = (@:check2r _rand.intn((50 : stdgo.GoInt)) : stdgo.GoInt);
                    var _codePoints = (new stdgo.Slice<stdgo.GoInt32>((_numChars : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _numChars : Bool)) {
                            _codePoints[(_i : stdgo.GoInt)] = (@:check2r _rand.intn((1114111 : stdgo.GoInt)) : stdgo.GoInt32);
                            _i++;
                        };
                    };
                    _v.setString((_codePoints : stdgo.GoString)?.__copy__());
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _n = (_v.numField() : stdgo.GoInt);
                    var _sizeLeft = (_size : stdgo.GoInt);
                    if ((_n > _sizeLeft : Bool)) {
                        _sizeLeft = (1 : stdgo.GoInt);
                    } else if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        _sizeLeft = (_sizeLeft / (_n) : stdgo.GoInt);
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _n : Bool)) {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedvalue._sizedValue(_concrete.field(_i).type, _rand, _sizeLeft), _elem:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                                    _value = __tmp__._0;
                                    _ok = __tmp__._1;
                                    __tmp__;
                                };
                            };
_v.field(_i).set(_elem.__copy__());
                            _i++;
                        };
                    };
                } else {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                        _value = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : _v?.__copy__(), _1 : true };
            _value = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
