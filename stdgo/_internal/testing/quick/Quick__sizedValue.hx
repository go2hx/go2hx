package stdgo._internal.testing.quick;
function _sizedValue(_t:stdgo._internal.reflect.Reflect_Type_.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } {
        var _value = ({} : stdgo._internal.reflect.Reflect_Value.Value), _ok = false;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_zero.zero(_t).interface_() : stdgo._internal.testing.quick.Quick_Generator.Generator)) : stdgo._internal.testing.quick.Quick_Generator.Generator), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.testing.quick.Quick_Generator.Generator), _1 : false };
            }, _m = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return { _0 : _m.generate(_rand, _size)?.__copy__(), _1 : true };
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_new_.new_(_t).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _concrete = (_t : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                final __value__ = _concrete.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setBool((_rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt)));
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setFloat((stdgo._internal.testing.quick.Quick__randFloat32._randFloat32(_rand) : stdgo.GoFloat64));
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setFloat(stdgo._internal.testing.quick.Quick__randFloat64._randFloat64(_rand));
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setComplex(new stdgo.GoComplex128((stdgo._internal.testing.quick.Quick__randFloat32._randFloat32(_rand) : stdgo.GoFloat64), (stdgo._internal.testing.quick.Quick__randFloat32._randFloat32(_rand) : stdgo.GoFloat64)));
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setComplex(new stdgo.GoComplex128(stdgo._internal.testing.quick.Quick__randFloat64._randFloat64(_rand), stdgo._internal.testing.quick.Quick__randFloat64._randFloat64(_rand)));
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand));
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand));
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand));
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand));
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt(stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand));
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((stdgo._internal.testing.quick.Quick__randInt64._randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _numElems = (_rand.intn(_size) : stdgo.GoInt);
                    _v.set(stdgo._internal.reflect.Reflect_makeMap.makeMap(_concrete)?.__copy__());
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numElems : Bool), _i++, {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_concrete.key(), _rand, _size), _key:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok1:Bool = __tmp__._1;
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_concrete.elem(), _rand, _size), _value:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok2:Bool = __tmp__._1;
                            if ((!_ok1 || !_ok2 : Bool)) {
                                return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                            };
                            _v.setMapIndex(_key?.__copy__(), _value?.__copy__());
                        });
                    };
                } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if (_rand.intn(_size) == ((0 : stdgo.GoInt))) {
                        _v.setZero();
                    } else {
                        var __tmp__ = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                        };
                        _v.set(stdgo._internal.reflect.Reflect_new_.new_(_concrete.elem())?.__copy__());
                        _v.elem().set(_elem?.__copy__());
                    };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _numElems = (_rand.intn(_size) : stdgo.GoInt);
                    var _sizeLeft = (_size - _numElems : stdgo.GoInt);
                    _v.set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_concrete, _numElems, _numElems)?.__copy__());
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numElems : Bool), _i++, {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_concrete.elem(), _rand, _sizeLeft), _elem:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                            };
                            _v.index(_i).set(_elem?.__copy__());
                        });
                    };
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _v.len() : Bool), _i++, {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                            };
                            _v.index(_i).set(_elem?.__copy__());
                        });
                    };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _numChars = (_rand.intn((50 : stdgo.GoInt)) : stdgo.GoInt);
                    var _codePoints = (new stdgo.Slice<stdgo.GoInt32>((_numChars : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numChars : Bool), _i++, {
                            _codePoints[(_i : stdgo.GoInt)] = (_rand.intn((1114111 : stdgo.GoInt)) : stdgo.GoInt32);
                        });
                    };
                    _v.setString((_codePoints : stdgo.GoString)?.__copy__());
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _n = (_v.numField() : stdgo.GoInt);
                    var _sizeLeft = (_size : stdgo.GoInt);
                    if ((_n > _sizeLeft : Bool)) {
                        _sizeLeft = (1 : stdgo.GoInt);
                    } else if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        _sizeLeft = (_sizeLeft / (_n) : stdgo.GoInt);
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            var __tmp__ = stdgo._internal.testing.quick.Quick__sizedValue._sizedValue(_concrete.field(_i).type, _rand, _sizeLeft), _elem:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                            };
                            _v.field(_i).set(_elem?.__copy__());
                        });
                    };
                } else {
                    return { _0 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                };
            };
        };
        return { _0 : _v?.__copy__(), _1 : true };
    }