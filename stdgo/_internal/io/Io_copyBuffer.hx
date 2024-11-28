package stdgo._internal.io;
function copyBuffer(_dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        if (((_buf != null) && (_buf.length == (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("empty buffer in CopyBuffer" : stdgo.GoString));
        };
        return {
            var __tmp__ = stdgo._internal.io.Io__copyBuffer._copyBuffer(_dst, _src, _buf);
            _written = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
