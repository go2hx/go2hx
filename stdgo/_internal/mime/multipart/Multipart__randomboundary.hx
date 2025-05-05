package stdgo._internal.mime.multipart;
function _randomBoundary():stdgo.GoString {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30).__setNumber32__();
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L87"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L88"
            throw stdgo.Go.toInterface(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L90"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
    }
