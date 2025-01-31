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
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_countWriter_asInterface) class T_countWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter> = _w;
        var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.write(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _w ?? throw "null pointer dereference")._count = ((@:checkr _w ?? throw "null pointer dereference")._count + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
