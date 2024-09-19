package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_nativeEndian_asInterface) class T_nativeEndian_static_extension {
    @:keep
    static public function goString( _:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian = _?.__copy__();
        return ("binary.NativeEndian" : stdgo.GoString);
    }
    @:keep
    static public function string( _:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian = _?.__copy__();
        return ("NativeEndian" : stdgo.GoString);
    }
    @:embedded
    public static function uint64( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.uint64(__0);
    @:embedded
    public static function uint32( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return __self__.uint32(__0);
    @:embedded
    public static function uint16( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return __self__.uint16(__0);
    @:embedded
    public static function putUint64( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64) __self__.putUint64(__0, __1);
    @:embedded
    public static function putUint32( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32) __self__.putUint32(__0, __1);
    @:embedded
    public static function putUint16( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16) __self__.putUint16(__0, __1);
    @:embedded
    public static function appendUint64( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return __self__.appendUint64(__0, __1);
    @:embedded
    public static function appendUint32( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return __self__.appendUint32(__0, __1);
    @:embedded
    public static function appendUint16( __self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return __self__.appendUint16(__0, __1);
}
