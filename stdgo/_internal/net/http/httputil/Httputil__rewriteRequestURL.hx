package stdgo._internal.net.http.httputil;
function _rewriteRequestURL(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _target:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Void {
        var _targetQuery = (_target.rawQuery?.__copy__() : stdgo.GoString);
        _req.url.scheme = _target.scheme?.__copy__();
        _req.url.host = _target.host?.__copy__();
        {
            var __tmp__ = stdgo._internal.net.http.httputil.Httputil__joinURLPath._joinURLPath(_target, _req.url);
            _req.url.path = __tmp__._0?.__copy__();
            _req.url.rawPath = __tmp__._1?.__copy__();
        };
        if (((_targetQuery == stdgo.Go.str()) || (_req.url.rawQuery == stdgo.Go.str()) : Bool)) {
            _req.url.rawQuery = (_targetQuery + _req.url.rawQuery?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _req.url.rawQuery = ((_targetQuery + ("&" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _req.url.rawQuery?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
