package stdgo._internal.io;
function copyBuffer(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L400"
        if (((_buf != null) && (_buf.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L401"
            throw stdgo.Go.toInterface(("empty buffer in CopyBuffer" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L403"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.io.Io__copybuffer._copyBuffer(_dst, _src, _buf);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
