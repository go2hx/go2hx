package stdgo.net;
class Buffers_static_extension {
    static public function read(_v:Buffers, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.net.Net_Buffers.Buffers>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_Buffers_static_extension.Buffers_static_extension.read(_v, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_v:Buffers, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.net.Net_Buffers.Buffers>);
        return {
            final obj = stdgo._internal.net.Net_Buffers_static_extension.Buffers_static_extension.writeTo(_v, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
