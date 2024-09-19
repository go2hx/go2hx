package stdgo._internal.expvar;
function handler():stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__expvarHandler._expvarHandler : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc));
    }
