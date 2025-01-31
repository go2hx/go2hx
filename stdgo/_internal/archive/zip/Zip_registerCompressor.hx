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
function registerCompressor(_method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_Compressor.Compressor):Void {
        {
            var __tmp__ = @:check2 stdgo._internal.archive.zip.Zip__compressors._compressors.loadOrStore(stdgo.Go.toInterface(_method), stdgo.Go.toInterface(_comp)), __4:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                throw stdgo.Go.toInterface(("compressor already registered" : stdgo.GoString));
            };
        };
    }
