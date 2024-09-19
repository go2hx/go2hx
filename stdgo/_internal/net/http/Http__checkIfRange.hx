package stdgo._internal.net.http;
function _checkIfRange(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _modtime:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.Http_T_condResult.T_condResult {
        if (((_r.method != ("GET" : stdgo.GoString)) && (_r.method != ("HEAD" : stdgo.GoString)) : Bool)) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var _ir = (_r.header._get(("If-Range" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_ir == (stdgo.Go.str())) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var __tmp__ = stdgo._internal.net.http.Http__scanETag._scanETag(_ir?.__copy__()), _etag:stdgo.GoString = __tmp__._0, __143:stdgo.GoString = __tmp__._1;
        if (_etag != (stdgo.Go.str())) {
            if (stdgo._internal.net.http.Http__etagStrongMatch._etagStrongMatch(_etag?.__copy__(), _w.header().get(("Etag" : stdgo.GoString))?.__copy__())) {
                return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            } else {
                return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
        };
        if (_modtime.isZero()) {
            return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var __tmp__ = stdgo._internal.net.http.Http_parseTime.parseTime(_ir?.__copy__()), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        if (_t.unix() == (_modtime.unix())) {
            return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
    }
