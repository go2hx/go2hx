package stdgo._internal.io;
function copy(_dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return {
            var __tmp__ = stdgo._internal.io.Io__copyBuffer._copyBuffer(_dst, _src, (null : stdgo.Slice<stdgo.GoUInt8>));
            _written = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
