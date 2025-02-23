package stdgo._internal.net.http;
function get(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r stdgo._internal.net.http.Http_defaultclient.defaultClient.get(_url?.__copy__());
            _resp = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _resp, _1 : _err };
        };
    }
