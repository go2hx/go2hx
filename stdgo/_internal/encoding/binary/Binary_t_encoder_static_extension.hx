package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function _skip( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        var _n = (stdgo._internal.encoding.binary.Binary__datasize._dataSize(_v?.__copy__()) : stdgo.GoInt);
        var _zero = ((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L765"
        for (_i => _ in _zero) {
            _zero[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _value( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L684"
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L687"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L688"
                        _e._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L694"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L696"
                        {
                            var _v = (_v.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L697"
                                _e._value(_v.__copy__());
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L699"
                                _e._skip(_v.__copy__());
                            };
                        };
                        _i++;
                    };
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L705"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L706"
                        _e._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L710"
                _e._bool(_v.bool_());
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L713"
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L715"
                        _e._int8((_v.int_() : stdgo.GoInt8));
                    } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L717"
                        _e._int16((_v.int_() : stdgo.GoInt16));
                    } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L719"
                        _e._int32((_v.int_() : stdgo.GoInt32));
                    } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L721"
                        _e._int64(_v.int_());
                    };
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L725"
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L727"
                        _e._uint8((_v.uint() : stdgo.GoUInt8));
                    } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L729"
                        _e._uint16((_v.uint() : stdgo.GoUInt16));
                    } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L731"
                        _e._uint32((_v.uint() : stdgo.GoUInt32));
                    } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L733"
                        _e._uint64(_v.uint());
                    };
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L737"
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L739"
                        _e._uint32(stdgo._internal.math.Math_float32bits.float32bits((_v.float_() : stdgo.GoFloat32)));
                    } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L741"
                        _e._uint64(stdgo._internal.math.Math_float64bits.float64bits(_v.float_()));
                    };
                };
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L745"
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L748"
                        _e._uint32(stdgo._internal.math.Math_float32bits.float32bits(((_x : stdgo.GoComplex128).real : stdgo.GoFloat32)));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L749"
                        _e._uint32(stdgo._internal.math.Math_float32bits.float32bits(((_x : stdgo.GoComplex128).imag : stdgo.GoFloat32)));
                    } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L752"
                        _e._uint64(stdgo._internal.math.Math_float64bits.float64bits((_x : stdgo.GoComplex128).real));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L753"
                        _e._uint64(stdgo._internal.math.Math_float64bits.float64bits((_x : stdgo.GoComplex128).imag));
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _int64( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L612"
        _e._uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function _int32( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L608"
        _e._uint32((_x : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _int16( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt16):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L604"
        _e._uint16((_x : stdgo.GoUInt16));
    }
    @:keep
    @:tdfield
    static public function _int8( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L600"
        _e._uint8((_x : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _uint64( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L594"
        (@:checkr _e ?? throw "null pointer dereference")._order.putUint64(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint32( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L583"
        (@:checkr _e ?? throw "null pointer dereference")._order.putUint32(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint16( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt16):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L572"
        (@:checkr _e ?? throw "null pointer dereference")._order.putUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((@:checkr _e ?? throw "null pointer dereference")._offset, ((@:checkr _e ?? throw "null pointer dereference")._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        (@:checkr _e ?? throw "null pointer dereference")._offset = ((@:checkr _e ?? throw "null pointer dereference")._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint8( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._offset : stdgo.GoInt)] = _x;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L562"
        (@:checkr _e ?? throw "null pointer dereference")._offset++;
    }
    @:keep
    @:tdfield
    static public function _bool( _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>, _x:Bool):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L546"
        if (_x) {
            (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._offset : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        } else {
            (@:checkr _e ?? throw "null pointer dereference")._buf[((@:checkr _e ?? throw "null pointer dereference")._offset : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L551"
        (@:checkr _e ?? throw "null pointer dereference")._offset++;
    }
}
