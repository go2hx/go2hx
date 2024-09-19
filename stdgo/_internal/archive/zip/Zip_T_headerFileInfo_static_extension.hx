package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_headerFileInfo_asInterface) class T_headerFileInfo_static_extension {
    @:keep
    static public function string( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.io.fs.Fs_formatFileInfo.formatFileInfo(stdgo.Go.asInterface(_fi))?.__copy__();
    }
    @:keep
    static public function info( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return { _0 : stdgo.Go.asInterface(_fi), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function sys( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.AnyInterface {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_fi._fh));
    }
    @:keep
    static public function type( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi._fh.mode().type();
    }
    @:keep
    static public function mode( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi._fh.mode();
    }
    @:keep
    static public function modTime( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo._internal.time.Time_Time.Time {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        if (_fi._fh.modified.isZero()) {
            return _fi._fh.modTime()?.__copy__();
        };
        return _fi._fh.modified.utc()?.__copy__();
    }
    @:keep
    static public function isDir( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):Bool {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi.mode().isDir();
    }
    @:keep
    static public function size( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.GoInt64 {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        if ((_fi._fh.uncompressedSize64 > (0i64 : stdgo.GoUInt64) : Bool)) {
            return (_fi._fh.uncompressedSize64 : stdgo.GoInt64);
        };
        return (_fi._fh.uncompressedSize : stdgo.GoInt64);
    }
    @:keep
    static public function name( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.path.Path_base.base(_fi._fh.name?.__copy__())?.__copy__();
    }
}
