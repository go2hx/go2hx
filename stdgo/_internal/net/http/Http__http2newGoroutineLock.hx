package stdgo._internal.net.http;
function _http2newGoroutineLock():stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock {
        if (!stdgo._internal.net.http.Http__http2DebugGoroutines._http2DebugGoroutines) {
            return (0i64 : stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock);
        };
        return (stdgo._internal.net.http.Http__http2curGoroutineID._http2curGoroutineID() : stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock);
    }
