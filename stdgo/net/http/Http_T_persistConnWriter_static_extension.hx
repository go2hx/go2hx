package stdgo.net.http;
class T_persistConnWriter_static_extension {
    static public function readFrom(_w:T_persistConnWriter, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConnWriter_static_extension.T_persistConnWriter_static_extension.readFrom(_w, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_persistConnWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConnWriter_static_extension.T_persistConnWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
