package stdgo._internal.net.http;
function newRequest(_method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        return stdgo._internal.net.http.Http_newrequestwithcontext.newRequestWithContext(stdgo._internal.net.http.Http__context._context.background(), _method?.__copy__(), _url?.__copy__(), _body);
    }
