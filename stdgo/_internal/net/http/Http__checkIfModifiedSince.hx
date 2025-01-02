package stdgo._internal.net.http;
function _checkIfModifiedSince(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _modtime:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.Http_T_condResult.T_condResult {
        if ((((@:checkr _r ?? throw "null pointer dereference").method != ("GET" : stdgo.GoString)) && ((@:checkr _r ?? throw "null pointer dereference").method != ("HEAD" : stdgo.GoString)) : Bool)) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var _ims = ((@:checkr _r ?? throw "null pointer dereference").header.get(("If-Modified-Since" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (((_ims == stdgo.Go.str()) || stdgo._internal.net.http.Http__isZeroTime._isZeroTime(_modtime?.__copy__()) : Bool)) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var __tmp__ = stdgo._internal.net.http.Http_parseTime.parseTime(_ims?.__copy__()), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        _modtime = _modtime.truncate((1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        {
            var _ret = (_modtime.compare(_t?.__copy__()) : stdgo.GoInt);
            if ((_ret <= (0 : stdgo.GoInt) : Bool)) {
                return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
        };
        return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
    }
