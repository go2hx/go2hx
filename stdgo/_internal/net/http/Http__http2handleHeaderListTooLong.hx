package stdgo._internal.net.http;
function _http2handleHeaderListTooLong(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        {};
        _w.writeHeader((431 : stdgo.GoInt));
        stdgo._internal.io.Io_writeString.writeString(_w, ("<h1>HTTP Error 431</h1><p>Request Header Field(s) Too Large</p>" : stdgo.GoString));
    }
