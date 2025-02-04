package stdgo._internal.net.http;
function handleFunc(_pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):Void {
        @:check2r stdgo._internal.net.http.Http_defaultservemux.defaultServeMux.handleFunc(_pattern?.__copy__(), _handler);
    }
