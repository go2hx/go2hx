package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapDir_asInterface) class T_mapDir_static_extension {
    @:keep
    @:tdfield
    static public function readDir( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.readDir is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.read is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>):stdgo.Error throw "T_mapDir:testing.fstest.close is not yet implemented";
    @:keep
    @:tdfield
    static public function stat( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } throw "T_mapDir:testing.fstest.stat is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function sys( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.AnyInterface return @:_5 __self__.sys();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.time.Time_Time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function isDir( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):Bool return @:_5 __self__.isDir();
    @:embedded
    @:embeddededffieldsffun
    public static function info( __self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.info();
}
