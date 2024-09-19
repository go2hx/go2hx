package stdgo._internal.net.http;
function notFoundHandler():stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((stdgo._internal.net.http.Http_notFound.notFound : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc));
    }
