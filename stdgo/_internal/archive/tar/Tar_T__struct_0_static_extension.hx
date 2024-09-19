package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function read( __self__:stdgo._internal.archive.tar.Tar_T__struct_0.T__struct_0, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(__0);
}
