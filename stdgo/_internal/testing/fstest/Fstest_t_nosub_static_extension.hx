package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_noSub_asInterface) class T_noSub_static_extension {
    @:keep
    @:tdfield
    static public function sub( _:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub):Void {
        @:recv var _:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub = _?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function stat( __self__:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.stat(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readFile( __self__:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub, _0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readDir( __self__:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub, _0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_5 __self__.readDir(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function open( __self__:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:_5 __self__.open(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function glob( __self__:stdgo._internal.testing.fstest.Fstest_t_nosub.T_noSub, _0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.glob(_0);
}
