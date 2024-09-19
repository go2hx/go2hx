package stdgo._internal.net.http;
function newRequest(_method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        return stdgo._internal.net.http.Http_newRequestWithContext.newRequestWithContext(stdgo._internal.context.Context_background.background(), _method?.__copy__(), _url?.__copy__(), _body);
    }
