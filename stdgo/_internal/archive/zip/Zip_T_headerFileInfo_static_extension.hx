package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_headerFileInfo_asInterface) class T_headerFileInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.io.fs.Fs_formatFileInfo.formatFileInfo(stdgo.Go.asInterface(_fi))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return { _0 : stdgo.Go.asInterface(_fi), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sys( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.AnyInterface {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_fi._fh));
    }
    @:keep
    @:tdfield
    static public function type( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return @:check2r _fi._fh.mode().type();
    }
    @:keep
    @:tdfield
    static public function mode( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return @:check2r _fi._fh.mode();
    }
    @:keep
    @:tdfield
    static public function modTime( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo._internal.time.Time_Time.Time {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        if ((@:checkr _fi._fh ?? throw "null pointer dereference").modified.isZero()) {
            return @:check2r _fi._fh.modTime()?.__copy__();
        };
        return (@:checkr _fi._fh ?? throw "null pointer dereference").modified.uTC()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isDir( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):Bool {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi.mode().isDir();
    }
    @:keep
    @:tdfield
    static public function size( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.GoInt64 {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        if (((@:checkr _fi._fh ?? throw "null pointer dereference").uncompressedSize64 > (0i64 : stdgo.GoUInt64) : Bool)) {
            return ((@:checkr _fi._fh ?? throw "null pointer dereference").uncompressedSize64 : stdgo.GoInt64);
        };
        return ((@:checkr _fi._fh ?? throw "null pointer dereference").uncompressedSize : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function name( _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.path.Path_base.base((@:checkr _fi._fh ?? throw "null pointer dereference").name?.__copy__())?.__copy__();
    }
}
