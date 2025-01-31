package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> {
        var __tmp__ = stdgo._internal.compress.gzip.Gzip_newWriterLevel.newWriterLevel(_w, (-1 : stdgo.GoInt)), _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _z;
    }
