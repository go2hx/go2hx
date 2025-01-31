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
function newReader(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>; var _1 : stdgo.Error; } {
        if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("zip: size cannot be negative" : stdgo.GoString)) };
        };
        var _zr = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_Reader.Reader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_Reader.Reader>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            _err = @:check2r _zr._init(_r, _size);
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath)) : Bool)) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _zr, _1 : _err };
    }
