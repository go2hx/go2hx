package stdgo._internal.net.http;
function _http2newRoundRobinWriteScheduler():stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
        var _ws = (stdgo.Go.setRef(({ _streams : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>) } : stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler>);
        return stdgo.Go.asInterface(_ws);
    }
