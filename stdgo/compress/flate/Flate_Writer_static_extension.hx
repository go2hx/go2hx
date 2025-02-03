package stdgo.compress.flate;
class Writer_static_extension {
    static public function reset(_w:Writer, _dst:stdgo._internal.io.Io_Writer.Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
        stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.reset(_w, _dst);
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
        return stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function flush(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
        return stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function write(_w:Writer, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
