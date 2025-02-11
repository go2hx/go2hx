package stdgo._internal.net.http;
function post(_url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r stdgo._internal.net.http.Http_defaultclient.defaultClient.post(_url?.__copy__(), _contentType?.__copy__(), _body);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _resp, _1 : _err };
        };
    }
