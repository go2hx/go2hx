package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    public static function write( __self__:stdgo._internal.archive.tar.Tar_T__struct_1.T__struct_1, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.writer.write(__0);
}
