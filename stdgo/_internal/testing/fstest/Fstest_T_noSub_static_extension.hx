package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_noSub_asInterface) class T_noSub_static_extension {
    @:keep
    static public function sub( _:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub):Void throw "T_noSub:testing.fstest.sub is not yet implemented";
    @:embedded
    public static function stat( __self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.stat(_pattern);
    @:embedded
    public static function readFile( __self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readFile(_pattern);
    @:embedded
    public static function readDir( __self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_pattern);
    @:embedded
    public static function open( __self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.open(_pattern);
    @:embedded
    public static function glob( __self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.glob(_pattern);
}
