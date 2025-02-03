package stdgo.net.http;
class T_bodyEOFSignal_static_extension {
    static public function close(_es:T_bodyEOFSignal):stdgo.Error {
        final _es = (_es : stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>);
        return stdgo._internal.net.http.Http_T_bodyEOFSignal_static_extension.T_bodyEOFSignal_static_extension.close(_es);
    }
    static public function read(_es:T_bodyEOFSignal, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _es = (_es : stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_bodyEOFSignal_static_extension.T_bodyEOFSignal_static_extension.read(_es, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
