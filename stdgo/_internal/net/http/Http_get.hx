package stdgo._internal.net.http;
function get(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        return stdgo._internal.net.http.Http_defaultClient.defaultClient.get(_url?.__copy__());
    }