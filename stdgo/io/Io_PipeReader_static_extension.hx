package stdgo.io;
class PipeReader_static_extension {
    static public function closeWithError(_r:PipeReader, _err:stdgo.Error):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_PipeReader_static_extension.PipeReader_static_extension.closeWithError(_r, _err);
    }
    static public function close(_r:PipeReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>);
        return stdgo._internal.io.Io_PipeReader_static_extension.PipeReader_static_extension.close(_r);
    }
    static public function read(_r:PipeReader, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_PipeReader_static_extension.PipeReader_static_extension.read(_r, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
