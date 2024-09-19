package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2frameCache_asInterface) class T_http2frameCache_static_extension {
    @:keep
    static public function _getDataFrame( _fc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>):stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> {
        @:recv var _fc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache> = _fc;
        if (_fc == null || (_fc : Dynamic).__nil__) {
            return (stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame() : stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>);
        };
        return (stdgo.Go.setRef(_fc._dataFrame) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>);
    }
}
