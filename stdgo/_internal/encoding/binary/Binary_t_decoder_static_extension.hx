package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function _skip( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + (stdgo._internal.encoding.binary.Binary__datasize._dataSize(_v?.__copy__())) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _value( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        @:check2r _d._value(_v.index(_i).__copy__());
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
                                @:check2r _d._value(_v.__copy__());
                            } else {
                                @:check2r _d._skip(_v.__copy__());
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
                        @:check2r _d._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setBool(@:check2r _d._bool());
            } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setInt((@:check2r _d._int8() : stdgo.GoInt64));
            } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setInt((@:check2r _d._int16() : stdgo.GoInt64));
            } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setInt((@:check2r _d._int32() : stdgo.GoInt64));
            } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setInt(@:check2r _d._int64());
            } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setUint((@:check2r _d._uint8() : stdgo.GoUInt64));
            } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setUint((@:check2r _d._uint16() : stdgo.GoUInt64));
            } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setUint((@:check2r _d._uint32() : stdgo.GoUInt64));
            } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setUint(@:check2r _d._uint64());
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setFloat((stdgo._internal.math.Math_float32frombits.float32frombits(@:check2r _d._uint32()) : stdgo.GoFloat64));
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setFloat(stdgo._internal.math.Math_float64frombits.float64frombits(@:check2r _d._uint64()));
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setComplex(new stdgo.GoComplex128((stdgo._internal.math.Math_float32frombits.float32frombits(@:check2r _d._uint32()) : stdgo.GoFloat64), (stdgo._internal.math.Math_float32frombits.float32frombits(@:check2r _d._uint32()) : stdgo.GoFloat64)));
            } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v.setComplex(new stdgo.GoComplex128(stdgo._internal.math.Math_float64frombits.float64frombits(@:check2r _d._uint64()), stdgo._internal.math.Math_float64frombits.float64frombits(@:check2r _d._uint64())));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _int64( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        return (@:check2r _d._uint64() : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _int32( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        return (@:check2r _d._uint32() : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _int16( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt16 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        return (@:check2r _d._uint16() : stdgo.GoInt16);
    }
    @:keep
    @:tdfield
    static public function _int8( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        return (@:check2r _d._uint8() : stdgo.GoInt8);
    }
    @:keep
    @:tdfield
    static public function _uint64( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._order.uint64(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset, ((@:checkr _d ?? throw "null pointer dereference")._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint32( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._order.uint32(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset, ((@:checkr _d ?? throw "null pointer dereference")._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint16( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt16 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._order.uint16(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset, ((@:checkr _d ?? throw "null pointer dereference")._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint8( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._buf[((@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        return _x;
    }
    @:keep
    @:tdfield
    static public function _bool( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._buf[((@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        return _x != ((0 : stdgo.GoUInt8));
    }
}
