package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_asInterface) class T_mapFileInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(stdgo.Go.asInterface(_i))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return { _0 : stdgo.Go.asInterface(_i), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sys( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.AnyInterface {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return (@:checkr (@:checkr _i ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").sys;
    }
    @:keep
    @:tdfield
    static public function isDir( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return ((@:checkr (@:checkr _i ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").mode & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode));
    }
    @:keep
    @:tdfield
    static public function modTime( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo._internal.time.Time_time.Time {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return (@:checkr (@:checkr _i ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").modTime?.__copy__();
    }
    @:keep
    @:tdfield
    static public function type( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return (@:checkr (@:checkr _i ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").mode.type();
    }
    @:keep
    @:tdfield
    static public function mode( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return (@:checkr (@:checkr _i ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").mode;
    }
    @:keep
    @:tdfield
    static public function size( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.GoInt64 {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return ((@:checkr (@:checkr _i ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").data.length : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function name( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        return (@:checkr _i ?? throw "null pointer dereference")._name?.__copy__();
    }
}
