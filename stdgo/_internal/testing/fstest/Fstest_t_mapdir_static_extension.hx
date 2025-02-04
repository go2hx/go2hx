package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapDir_asInterface) class T_mapDir_static_extension {
    @:keep
    @:tdfield
    static public function readDir( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        var _n = (((@:checkr _d ?? throw "null pointer dereference")._entry.length) - (@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        if (((_n == (0 : stdgo.GoInt)) && (_count > (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        if (((_count > (0 : stdgo.GoInt) : Bool) && (_n > _count : Bool) : Bool)) {
            _n = _count;
        };
        var _list = (new stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        for (_i => _ in _list) {
            _list[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._entry[((@:checkr _d ?? throw "null pointer dereference")._offset + _i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>));
        };
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr _d ?? throw "null pointer dereference")._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
    }
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function stat( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._mapFileInfo) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>)), _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function sys( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.AnyInterface return @:_5 __self__.sys();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo._internal.time.Time_time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function isDir( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):Bool return @:_5 __self__.isDir();
    @:embedded
    @:embeddededffieldsffun
    public static function info( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.info();
}
