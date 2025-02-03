package stdgo.io;
class PipeWriter_static_extension {
    static public function closeWithError(_w:PipeWriter, _err:stdgo.Error):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_PipeWriter_static_extension.PipeWriter_static_extension.closeWithError(_w, _err);
    }
    static public function close(_w:PipeWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>);
        return stdgo._internal.io.Io_PipeWriter_static_extension.PipeWriter_static_extension.close(_w);
    }
    static public function write(_w:PipeWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_PipeWriter_static_extension.PipeWriter_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
