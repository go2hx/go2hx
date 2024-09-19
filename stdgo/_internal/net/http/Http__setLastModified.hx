package stdgo._internal.net.http;
function _setLastModified(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _modtime:stdgo._internal.time.Time_Time.Time):Void {
        if (!stdgo._internal.net.http.Http__isZeroTime._isZeroTime(_modtime?.__copy__())) {
            _w.header().set(("Last-Modified" : stdgo.GoString), _modtime.utc().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__());
        };
    }
