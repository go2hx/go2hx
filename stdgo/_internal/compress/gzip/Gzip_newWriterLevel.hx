package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
function newWriterLevel(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>; var _1 : stdgo.Error; } {
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gzip: invalid compression level: %d" : stdgo.GoString), stdgo.Go.toInterface(_level)) };
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_Writer.Writer)) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        @:check2r _z._init(_w, _level);
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
