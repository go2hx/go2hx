package stdgo._internal.net.http;
function _checkPreconditions(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _modtime:stdgo._internal.time.Time_Time.Time):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        var _done = false, _rangeHeader = ("" : stdgo.GoString);
        var _ch = (stdgo._internal.net.http.Http__checkIfMatch._checkIfMatch(_w, _r) : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        if (_ch == ((0 : stdgo._internal.net.http.Http_T_condResult.T_condResult))) {
            _ch = stdgo._internal.net.http.Http__checkIfUnmodifiedSince._checkIfUnmodifiedSince(_r, _modtime?.__copy__());
        };
        if (_ch == ((2 : stdgo._internal.net.http.Http_T_condResult.T_condResult))) {
            _w.writeHeader((412 : stdgo.GoInt));
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : stdgo.Go.str()?.__copy__() };
                _done = __tmp__._0;
                _rangeHeader = __tmp__._1;
                __tmp__;
            };
        };
        {
            final __value__ = stdgo._internal.net.http.Http__checkIfNoneMatch._checkIfNoneMatch(_w, _r);
            if (__value__ == ((2 : stdgo._internal.net.http.Http_T_condResult.T_condResult))) {
                if ((((@:checkr _r ?? throw "null pointer dereference").method == ("GET" : stdgo.GoString)) || ((@:checkr _r ?? throw "null pointer dereference").method == ("HEAD" : stdgo.GoString)) : Bool)) {
                    stdgo._internal.net.http.Http__writeNotModified._writeNotModified(_w);
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : stdgo.Go.str()?.__copy__() };
                        _done = __tmp__._0;
                        _rangeHeader = __tmp__._1;
                        __tmp__;
                    };
                } else {
                    _w.writeHeader((412 : stdgo.GoInt));
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : stdgo.Go.str()?.__copy__() };
                        _done = __tmp__._0;
                        _rangeHeader = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((0 : stdgo._internal.net.http.Http_T_condResult.T_condResult))) {
                if (stdgo._internal.net.http.Http__checkIfModifiedSince._checkIfModifiedSince(_r, _modtime?.__copy__()) == ((2 : stdgo._internal.net.http.Http_T_condResult.T_condResult))) {
                    stdgo._internal.net.http.Http__writeNotModified._writeNotModified(_w);
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : stdgo.Go.str()?.__copy__() };
                        _done = __tmp__._0;
                        _rangeHeader = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        _rangeHeader = (@:checkr _r ?? throw "null pointer dereference").header._get(("Range" : stdgo.GoString))?.__copy__();
        if (((_rangeHeader != stdgo.Go.str()) && (stdgo._internal.net.http.Http__checkIfRange._checkIfRange(_w, _r, _modtime?.__copy__()) == (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult)) : Bool)) {
            _rangeHeader = stdgo.Go.str()?.__copy__();
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : _rangeHeader?.__copy__() };
            _done = __tmp__._0;
            _rangeHeader = __tmp__._1;
            __tmp__;
        };
    }
