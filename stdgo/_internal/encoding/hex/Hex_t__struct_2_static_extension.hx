package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface) class T__struct_2_static_extension {
    @:embedded
    @:localembedfields
    public static function write( __self__:stdgo._internal.encoding.hex.Hex_t__struct_2.T__struct_2, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (__self__.writer ?? throw "null pointer dereference").write(_0);
}
