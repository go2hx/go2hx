package stdgo.net.http;
class T_noBody_static_extension {
    static public function writeTo(_:T_noBody, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_noBody_static_extension.T_noBody_static_extension.writeTo(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_noBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_noBody_static_extension.T_noBody_static_extension.close(_);
    }
    static public function read(_:T_noBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_noBody_static_extension.T_noBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
