package stdgo._internal.net.http;
function maxBytesReader(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo._internal.io.Io_ReadCloser.ReadCloser, _n:stdgo.GoInt64):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
            _n = (0i64 : stdgo.GoInt64);
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w, _r : _r, _i : _n, _n : _n } : stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader>));
    }
