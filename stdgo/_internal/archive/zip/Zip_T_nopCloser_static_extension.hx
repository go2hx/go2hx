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
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser):stdgo.Error {
        @:recv var _w:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser = _w?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
}
