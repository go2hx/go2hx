package stdgo._internal.image.gif;
function _readFull(_r:stdgo._internal.io.Io_reader.Reader, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L68"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L71"
        return _err;
    }
