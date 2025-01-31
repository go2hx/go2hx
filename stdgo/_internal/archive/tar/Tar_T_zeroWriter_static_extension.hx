package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_zeroWriter_asInterface) class T_zeroWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.archive.tar.Tar_T_zeroWriter.T_zeroWriter = _?.__copy__();
        for (_i => _c in _b) {
            if (_c != ((0 : stdgo.GoUInt8))) {
                return { _0 : _i, _1 : stdgo._internal.archive.tar.Tar__errWriteHole._errWriteHole };
            };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
