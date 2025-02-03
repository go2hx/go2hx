package stdgo.net.http.httputil;
class T_maxLatencyWriter_static_extension {
    static public function _stop(_m:T_maxLatencyWriter):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>);
        stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension._stop(_m);
    }
    static public function _delayedFlush(_m:T_maxLatencyWriter):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>);
        stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension._delayedFlush(_m);
    }
    static public function write(_m:T_maxLatencyWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension.write(_m, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
