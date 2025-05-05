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
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L615"
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L618"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L619"
                        _d._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L625"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L631"
                        {
                            var _v = (_v.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L632"
                                _d._value(_v.__copy__());
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L634"
                                _d._skip(_v.__copy__());
                            };
                        };
                        _i++;
                    };
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L640"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _l : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L641"
                        _d._value(_v.index(_i).__copy__());
                        _i++;
                    };
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L645"
                _v.setBool(_d._bool());
            } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L648"
                _v.setInt((_d._int8() : stdgo.GoInt64));
            } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L650"
                _v.setInt((_d._int16() : stdgo.GoInt64));
            } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L652"
                _v.setInt((_d._int32() : stdgo.GoInt64));
            } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L654"
                _v.setInt(_d._int64());
            } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L657"
                _v.setUint((_d._uint8() : stdgo.GoUInt64));
            } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L659"
                _v.setUint((_d._uint16() : stdgo.GoUInt64));
            } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L661"
                _v.setUint((_d._uint32() : stdgo.GoUInt64));
            } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L663"
                _v.setUint(_d._uint64());
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L666"
                _v.setFloat((stdgo._internal.math.Math_float32frombits.float32frombits(_d._uint32()) : stdgo.GoFloat64));
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L668"
                _v.setFloat(stdgo._internal.math.Math_float64frombits.float64frombits(_d._uint64()));
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L671"
                _v.setComplex(new stdgo.GoComplex128((stdgo._internal.math.Math_float32frombits.float32frombits(_d._uint32()) : stdgo.GoFloat64), (stdgo._internal.math.Math_float32frombits.float32frombits(_d._uint32()) : stdgo.GoFloat64)));
            } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L676"
                _v.setComplex(new stdgo.GoComplex128(stdgo._internal.math.Math_float64frombits.float64frombits(_d._uint64()), stdgo._internal.math.Math_float64frombits.float64frombits(_d._uint64())));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _int64( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L610"
        return (_d._uint64() : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _int32( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L606"
        return (_d._uint32() : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _int16( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt16 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L602"
        return (_d._uint16() : stdgo.GoInt16);
    }
    @:keep
    @:tdfield
    static public function _int8( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L598"
        return (_d._uint8() : stdgo.GoInt8);
    }
    @:keep
    @:tdfield
    static public function _uint64( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._order.uint64(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset, ((@:checkr _d ?? throw "null pointer dereference")._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L590"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint32( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._order.uint32(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset, ((@:checkr _d ?? throw "null pointer dereference")._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L579"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint16( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt16 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._order.uint16(((@:checkr _d ?? throw "null pointer dereference")._buf.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset, ((@:checkr _d ?? throw "null pointer dereference")._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L568"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint8( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):stdgo.GoUInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._buf[((@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L556"
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L557"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _bool( _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder> = _d;
        var _x = ((@:checkr _d ?? throw "null pointer dereference")._buf[((@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L541"
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L542"
        return _x != ((0 : stdgo.GoUInt8));
    }
}
