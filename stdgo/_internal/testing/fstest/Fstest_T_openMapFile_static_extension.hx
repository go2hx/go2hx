package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_openMapFile_asInterface) class T_openMapFile_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile> = _f;
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._mapFileInfo._f ?? throw "null pointer dereference").data.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr _f ?? throw "null pointer dereference")._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _n = (_b.__copyTo__(((@:checkr (@:checkr _f ?? throw "null pointer dereference")._mapFileInfo._f ?? throw "null pointer dereference").data.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        if ((_n < (_b.length) : Bool)) {
            return { _0 : _n, _1 : stdgo._internal.io.Io_eOF.eOF };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seek( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile> = _f;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _f ?? throw "null pointer dereference")._offset) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + (((@:checkr (@:checkr _f ?? throw "null pointer dereference")._mapFileInfo._f ?? throw "null pointer dereference").data.length : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._mapFileInfo._f ?? throw "null pointer dereference").data.length : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("seek" : stdgo.GoString), path : (@:checkr _f ?? throw "null pointer dereference")._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        (@:checkr _f ?? throw "null pointer dereference")._offset = _offset;
        return { _0 : _offset, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile> = _f;
        if (((@:checkr _f ?? throw "null pointer dereference")._offset >= ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._mapFileInfo._f ?? throw "null pointer dereference").data.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eOF.eOF };
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._offset < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr _f ?? throw "null pointer dereference")._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
        };
        var _n = (_b.__copyTo__(((@:checkr (@:checkr _f ?? throw "null pointer dereference")._mapFileInfo._f ?? throw "null pointer dereference").data.__slice__((@:checkr _f ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        (@:checkr _f ?? throw "null pointer dereference")._offset = ((@:checkr _f ?? throw "null pointer dereference")._offset + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile> = _f;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function stat( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile> = _f;
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._mapFileInfo) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>)), _1 : (null : stdgo.Error) };
    }
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
