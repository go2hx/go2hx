package stdgo._internal.net.http;
function _http2new400Handler(_err:stdgo.Error):stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc {
        return function(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (400 : stdgo.GoInt));
        };
    }
