package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_openMapFile_asInterface) class T_openMapFile_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.readAt is not yet implemented";
    @:keep
    @:tdfield
    static public function seek( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.seek is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.read is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>):stdgo.Error throw "T_openMapFile:testing.fstest.close is not yet implemented";
    @:keep
    @:tdfield
    static public function stat( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } throw "T_openMapFile:testing.fstest.stat is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function sys( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.AnyInterface return @:_5 __self__.sys();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.time.Time_Time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function isDir( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):Bool return @:_5 __self__.isDir();
    @:embedded
    @:embeddededffieldsffun
    public static function info( __self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.info();
}
