package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
function _randomBoundary():stdgo.GoString {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30, ...[for (i in 0 ... 30) (0 : stdgo.GoUInt8)]);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
    }