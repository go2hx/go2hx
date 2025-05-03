package stdgo._internal.io;
function readFull(_r:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L354"
        return stdgo._internal.io.Io_readatleast.readAtLeast(_r, _buf, (_buf.length));
    }
