package stdgo._internal.compress.zlib;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.adler32.Adler32;
import stdgo._internal.compress.flate.Flate;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
        return stdgo._internal.compress.zlib.Zlib_newReaderDict.newReaderDict(_r, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
