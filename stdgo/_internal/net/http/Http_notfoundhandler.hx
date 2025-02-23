package stdgo._internal.net.http;
function notFoundHandler():stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((stdgo._internal.net.http.Http_notfound.notFound : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc));
    }
