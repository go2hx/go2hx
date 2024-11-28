package stdgo._internal.net.http;
function head(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        return {
            var __tmp__ = stdgo._internal.net.http.Http_defaultClient.defaultClient.head(_url?.__copy__());
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
