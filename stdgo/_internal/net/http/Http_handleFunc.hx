package stdgo._internal.net.http;
function handleFunc(_pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux.handleFunc(_pattern?.__copy__(), _handler);
    }
