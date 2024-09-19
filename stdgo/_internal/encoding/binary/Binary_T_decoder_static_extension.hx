package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function _skip( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        _d._offset = (_d._offset + (stdgo._internal.encoding.binary.Binary__dataSize._dataSize(_v?.__copy__())) : stdgo.GoInt);
    }
    @:keep
    static public function _value( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        {
                            var _v = (_v.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                _d._value(_v?.__copy__());
                            } else {
                                _d._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setBool(_d._bool());
            } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setInt((_d._int8() : stdgo.GoInt64));
            } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setInt((_d._int16() : stdgo.GoInt64));
            } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setInt((_d._int32() : stdgo.GoInt64));
            } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setInt(_d._int64());
            } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setUint((_d._uint8() : stdgo.GoUInt64));
            } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setUint((_d._uint16() : stdgo.GoUInt64));
            } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setUint((_d._uint32() : stdgo.GoUInt64));
            } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setUint(_d._uint64());
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setFloat((stdgo._internal.math.Math_float32frombits.float32frombits(_d._uint32()) : stdgo.GoFloat64));
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setFloat(stdgo._internal.math.Math_float64frombits.float64frombits(_d._uint64()));
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setComplex(new stdgo.GoComplex128((stdgo._internal.math.Math_float32frombits.float32frombits(_d._uint32()) : stdgo.GoFloat64), (stdgo._internal.math.Math_float32frombits.float32frombits(_d._uint32()) : stdgo.GoFloat64)));
            } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _v.setComplex(new stdgo.GoComplex128(stdgo._internal.math.Math_float64frombits.float64frombits(_d._uint64()), stdgo._internal.math.Math_float64frombits.float64frombits(_d._uint64())));
            };
        };
    }
    @:keep
    static public function _int64( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        return (_d._uint64() : stdgo.GoInt64);
    }
    @:keep
    static public function _int32( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        return (_d._uint32() : stdgo.GoInt32);
    }
    @:keep
    static public function _int16( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoInt16 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        return (_d._uint16() : stdgo.GoInt16);
    }
    @:keep
    static public function _int8( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        return (_d._uint8() : stdgo.GoInt8);
    }
    @:keep
    static public function _uint64( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoUInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        var _x = (_d._order.uint64((_d._buf.__slice__(_d._offset, (_d._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        _d._offset = (_d._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    static public function _uint32( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoUInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        var _x = (_d._order.uint32((_d._buf.__slice__(_d._offset, (_d._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        _d._offset = (_d._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    static public function _uint16( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoUInt16 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        var _x = (_d._order.uint16((_d._buf.__slice__(_d._offset, (_d._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        _d._offset = (_d._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    static public function _uint8( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):stdgo.GoUInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        var _x = (_d._buf[(_d._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        _d._offset++;
        return _x;
    }
    @:keep
    static public function _bool( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder> = _d;
        var _x = (_d._buf[(_d._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        _d._offset++;
        return _x != ((0 : stdgo.GoUInt8));
    }
}
