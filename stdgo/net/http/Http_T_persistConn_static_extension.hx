package stdgo.net.http;
class T_persistConn_static_extension {
    static public function read(_pc:T_persistConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _pc = (_pc : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension.read(_pc, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
