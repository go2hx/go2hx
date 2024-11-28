package stdgo._internal.net.http;
function postForm(_url:stdgo.GoString, _data:stdgo._internal.net.url.Url_Values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = stdgo._internal.net.http.Http_defaultClient.defaultClient.postForm(_url?.__copy__(), _data);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
