package stdgo.net.http;
class T_readTrackingBody_static_extension {
    static public function close(_r:T_readTrackingBody):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>);
        return stdgo._internal.net.http.Http_T_readTrackingBody_static_extension.T_readTrackingBody_static_extension.close(_r);
    }
    static public function read(_r:T_readTrackingBody, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_readTrackingBody_static_extension.T_readTrackingBody_static_extension.read(_r, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
