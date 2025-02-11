package stdgo._internal.io;
function copy(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return {
            final __tmp__ = stdgo._internal.io.Io__copybuffer._copyBuffer(_dst, _src, (null : stdgo.Slice<stdgo.GoUInt8>));
            _written = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _written, _1 : _err };
        };
    }
