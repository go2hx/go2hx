package stdgo._internal.io;
function writeString(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L315"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_stringwriter.StringWriter)) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L316"
                return _sw.writeString(_s?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L318"
        return _w.write((_s : stdgo.Slice<stdgo.GoUInt8>));
    }
