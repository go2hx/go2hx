package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    @:localembedfields
    public static function read( __self__:stdgo._internal.encoding.hex.Hex_T__struct_1.T__struct_1, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (__self__.reader ?? throw "null pointer derefrence").read(_0);
}
