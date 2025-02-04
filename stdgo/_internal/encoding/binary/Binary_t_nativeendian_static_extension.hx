package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_nativeEndian_asInterface) class T_nativeEndian_static_extension {
    @:keep
    @:tdfield
    static public function goString( _:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian = _?.__copy__();
        return ("binary.NativeEndian" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian = _?.__copy__();
        return ("NativeEndian" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function uint64( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_5 __self__.uint64(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function uint32( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return @:_5 __self__.uint32(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function uint16( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return @:_5 __self__.uint16(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function putUint64( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void return @:_5 __self__.putUint64(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function putUint32( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void return @:_5 __self__.putUint32(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function putUint16( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void return @:_5 __self__.putUint16(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function appendUint64( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.appendUint64(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function appendUint32( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.appendUint32(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function appendUint16( __self__:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.appendUint16(_0, _1);
}
