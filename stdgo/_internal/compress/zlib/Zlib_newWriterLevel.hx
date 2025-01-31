package stdgo._internal.compress.zlib;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.adler32.Adler32;
import stdgo._internal.compress.flate.Flate;
function newWriterLevel(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>; var _1 : stdgo.Error; } {
        return stdgo._internal.compress.zlib.Zlib_newWriterLevelDict.newWriterLevelDict(_w, _level, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
