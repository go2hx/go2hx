package stdgo._internal.net.http;
function handle(_pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_handler.Handler):Void {
        @:check2r stdgo._internal.net.http.Http_defaultservemux.defaultServeMux.handle(_pattern?.__copy__(), _handler);
    }
