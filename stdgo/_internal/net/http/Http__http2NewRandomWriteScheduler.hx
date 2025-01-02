package stdgo._internal.net.http;
function _http2NewRandomWriteScheduler():stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _sq : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>) } : stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>));
    }
