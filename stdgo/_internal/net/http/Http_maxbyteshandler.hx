package stdgo._internal.net.http;
function maxBytesHandler(_h:stdgo._internal.net.http.Http_handler.Handler, _n:stdgo.GoInt64):stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
            var _r2 = ((_r : stdgo._internal.net.http.Http_request.Request)?.__copy__() : stdgo._internal.net.http.Http_request.Request);
            _r2.body = stdgo._internal.net.http.Http_maxbytesreader.maxBytesReader(_w, (@:checkr _r ?? throw "null pointer dereference").body, _n);
            _h.serveHTTP(_w, (stdgo.Go.setRef(_r2) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>));
        } : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc));
    }
