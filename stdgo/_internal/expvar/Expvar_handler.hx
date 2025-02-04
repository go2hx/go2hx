package stdgo._internal.expvar;
function handler():stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__expvarhandler._expvarHandler : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc));
    }
