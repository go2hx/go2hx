package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function _skip( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        var _n = (stdgo._internal.encoding.binary.Binary__dataSize._dataSize(_v?.__copy__()) : stdgo.GoInt);
        var _zero = (_e._buf.__slice__(_e._offset, (_e._offset + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _zero) {
            _zero[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        _e._offset = (_e._offset + (_n) : stdgo.GoInt);
    }
    @:keep
    static public function _value( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        _e._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        {
                            var _v = (_v.field(_i).__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                _e._value(_v.__copy__());
                            } else {
                                _e._skip(_v.__copy__());
                            };
                        };
                        _i++;
                    };
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        _e._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _e._bool(_v.bool_());
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._int8((_v.int_() : stdgo.GoInt8));
                    } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._int16((_v.int_() : stdgo.GoInt16));
                    } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._int32((_v.int_() : stdgo.GoInt32));
                    } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._int64(_v.int_());
                    };
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._uint8((_v.uint() : stdgo.GoUInt8));
                    } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._uint16((_v.uint() : stdgo.GoUInt16));
                    } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._uint32((_v.uint() : stdgo.GoUInt32));
                    } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._uint64(_v.uint());
                    };
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._uint32(stdgo._internal.math.Math_float32bits.float32bits((_v.float_() : stdgo.GoFloat32)));
                    } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _e._uint64(stdgo._internal.math.Math_float64bits.float64bits(_v.float_()));
                    };
                };
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        _e._uint32(stdgo._internal.math.Math_float32bits.float32bits((_x.real : stdgo.GoFloat32)));
                        _e._uint32(stdgo._internal.math.Math_float32bits.float32bits((_x.imag : stdgo.GoFloat32)));
                    } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        _e._uint64(stdgo._internal.math.Math_float64bits.float64bits(_x.real));
                        _e._uint64(stdgo._internal.math.Math_float64bits.float64bits(_x.imag));
                    };
                };
            };
        };
    }
    @:keep
    static public function _int64( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    static public function _int32( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._uint32((_x : stdgo.GoUInt32));
    }
    @:keep
    static public function _int16( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoInt16):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._uint16((_x : stdgo.GoUInt16));
    }
    @:keep
    static public function _int8( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._uint8((_x : stdgo.GoUInt8));
    }
    @:keep
    static public function _uint64( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._order.putUint64((_e._buf.__slice__(_e._offset, (_e._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _e._offset = (_e._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint32( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._order.putUint32((_e._buf.__slice__(_e._offset, (_e._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _e._offset = (_e._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint16( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoUInt16):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._order.putUint16((_e._buf.__slice__(_e._offset, (_e._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _e._offset = (_e._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint8( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        _e._buf[(_e._offset : stdgo.GoInt)] = _x;
        _e._offset++;
    }
    @:keep
    static public function _bool( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder>, _x:Bool):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_encoder.T_encoder> = _e;
        if (_x) {
            _e._buf[(_e._offset : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        } else {
            _e._buf[(_e._offset : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        _e._offset++;
    }
}
