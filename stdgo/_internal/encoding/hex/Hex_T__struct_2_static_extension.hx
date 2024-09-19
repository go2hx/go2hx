package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface) class T__struct_2_static_extension {
    @:embedded
    public static function write( __self__:stdgo._internal.encoding.hex.Hex_T__struct_2.T__struct_2, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.writer.write(_src);
}
