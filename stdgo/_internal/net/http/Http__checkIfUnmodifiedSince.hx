package stdgo._internal.net.http;
function _checkIfUnmodifiedSince(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _modtime:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.Http_T_condResult.T_condResult {
        var _ius = (_r.header.get(("If-Unmodified-Since" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (((_ius == stdgo.Go.str()) || stdgo._internal.net.http.Http__isZeroTime._isZeroTime(_modtime?.__copy__()) : Bool)) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var __tmp__ = stdgo._internal.net.http.Http_parseTime.parseTime(_ius?.__copy__()), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        _modtime = _modtime.truncate((1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        {
            var _ret = (_modtime.compare(_t?.__copy__()) : stdgo.GoInt);
            if ((_ret <= (0 : stdgo.GoInt) : Bool)) {
                return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
        };
        return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
    }
