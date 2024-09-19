package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsOnly_asInterface) class T_fsOnly_static_extension {
    @:embedded
    public static function open( __self__:stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly, _pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return __self__.open(_pattern);
}
