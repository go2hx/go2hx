package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    @:localembedfields
    public static function read( __self__:stdgo._internal.archive.tar.Tar_t__struct_0.T__struct_0, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (__self__.reader ?? throw "null pointer dereference").read(_0);
}
