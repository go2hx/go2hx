package stdgo._internal.net.http;
function handle(_pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_Handler.Handler):Void {
        @:check2r stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux.handle(_pattern?.__copy__(), _handler);
    }
