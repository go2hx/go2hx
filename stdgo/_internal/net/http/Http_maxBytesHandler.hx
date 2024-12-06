package stdgo._internal.net.http;
function maxBytesHandler(_h:stdgo._internal.net.http.Http_Handler.Handler, _n:stdgo.GoInt64):stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            var _r2 = ((_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__() : stdgo._internal.net.http.Http_Request.Request);
            _r2.body = stdgo._internal.net.http.Http_maxBytesReader.maxBytesReader(_w, _r.body, _n);
            _h.serveHTTP(_w, (stdgo.Go.setRef(_r2) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>));
        } : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc));
    }
