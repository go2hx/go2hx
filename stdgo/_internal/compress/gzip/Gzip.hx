package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.compress.gzip.Gzip_errChecksum.errChecksum, __tmp__1 = stdgo._internal.compress.gzip.Gzip_errHeader.errHeader, __tmp__2 = stdgo._internal.compress.gzip.Gzip__le._le;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
