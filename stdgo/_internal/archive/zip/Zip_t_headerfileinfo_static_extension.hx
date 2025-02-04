package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_headerFileInfo_asInterface) class T_headerFileInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(stdgo.Go.asInterface(_fi))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return { _0 : stdgo.Go.asInterface(_fi), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sys( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo.AnyInterface {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_fi._fh));
    }
    @:keep
    @:tdfield
    static public function type( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return @:check2r _fi._fh.mode().type();
    }
    @:keep
    @:tdfield
    static public function mode( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return @:check2r _fi._fh.mode();
    }
    @:keep
    @:tdfield
    static public function modTime( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo._internal.time.Time_time.Time {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        if ((@:checkr _fi._fh ?? throw "null pointer dereference").modified.isZero()) {
            return @:check2r _fi._fh.modTime()?.__copy__();
        };
        return (@:checkr _fi._fh ?? throw "null pointer dereference").modified.uTC()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isDir( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):Bool {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return _fi.mode().isDir();
    }
    @:keep
    @:tdfield
    static public function size( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo.GoInt64 {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        if (((@:checkr _fi._fh ?? throw "null pointer dereference").uncompressedSize64 > (0i64 : stdgo.GoUInt64) : Bool)) {
            return ((@:checkr _fi._fh ?? throw "null pointer dereference").uncompressedSize64 : stdgo.GoInt64);
        };
        return ((@:checkr _fi._fh ?? throw "null pointer dereference").uncompressedSize : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function name( _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.path.Path_base.base((@:checkr _fi._fh ?? throw "null pointer dereference").name?.__copy__())?.__copy__();
    }
}
