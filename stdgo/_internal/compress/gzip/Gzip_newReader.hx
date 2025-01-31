package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_Reader.Reader)) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        {
            var _err = (@:check2r _z.reset(_r) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
