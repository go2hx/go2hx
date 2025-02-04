package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function _skip( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        var _n = (stdgo._internal.encoding.binary.Binary__datasize._dataSize(_v?.__copy__()) : stdgo.GoInt);
        var _zero = ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _zero) {
            _zero[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _value( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        @:check2r _e._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        {
                            var _v = (_v.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                @:check2r _e._value(_v.__copy__());
                            } else {
                                @:check2r _e._skip(_v.__copy__());
                            };
                        };
                        _i++;
                    };
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        @:check2r _e._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                @:check2r _e._bool(_v.bool_());
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._int8((_v.int_() : stdgo.GoInt8));
                    } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._int16((_v.int_() : stdgo.GoInt16));
                    } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._int32((_v.int_() : stdgo.GoInt32));
                    } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._int64(_v.int_());
                    };
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._uint8((_v.uint() : stdgo.GoUInt8));
                    } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._uint16((_v.uint() : stdgo.GoUInt16));
                    } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._uint32((_v.uint() : stdgo.GoUInt32));
                    } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._uint64(_v.uint());
                    };
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._uint32(stdgo._internal.math.Math_float32bits.float32bits((_v.float_() : stdgo.GoFloat32)));
                    } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        @:check2r _e._uint64(stdgo._internal.math.Math_float64bits.float64bits(_v.float_()));
                    };
                };
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        @:check2r _e._uint32(stdgo._internal.math.Math_float32bits.float32bits(((_x : stdgo.GoComplex128).real : stdgo.GoFloat32)));
                        @:check2r _e._uint32(stdgo._internal.math.Math_float32bits.float32bits(((_x : stdgo.GoComplex128).imag : stdgo.GoFloat32)));
                    } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        @:check2r _e._uint64(stdgo._internal.math.Math_float64bits.float64bits((_x : stdgo.GoComplex128).real));
                        @:check2r _e._uint64(stdgo._internal.math.Math_float64bits.float64bits((_x : stdgo.GoComplex128).imag));
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _int64( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        @:check2r _e._uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function _int32( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        @:check2r _e._uint32((_x : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _int16( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt16):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        @:check2r _e._uint16((_x : stdgo.GoUInt16));
    }
    @:keep
    @:tdfield
    static public function _int8( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        @:check2r _e._uint8((_x : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _uint64( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._order.putUint64(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint32( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._order.putUint32(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint16( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt16):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._order.putUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint8( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._offset : stdgo.GoInt)] = _x;
        (@:checkr _e ?? throw "null pointer dereference")._offset++;
    }
    @:keep
    @:tdfield
    static public function _bool( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:Bool):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        if (_x) {
            (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._offset : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        } else {
            (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._offset : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        (@:checkr _e ?? throw "null pointer dereference")._offset++;
    }
}
