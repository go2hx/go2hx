package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_shuffledFile_asInterface) class T_shuffledFile_static_extension {
    @:keep
    static public function readDir( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } throw "T_shuffledFile:testing.fstest.readDir is not yet implemented";
    @:embedded
    public static function stat( __self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return __self__.stat();
    @:embedded
    public static function read( __self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
    @:embedded
    public static function close( __self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile):stdgo.Error return __self__.close();
}
