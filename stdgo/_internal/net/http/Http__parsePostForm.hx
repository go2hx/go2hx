package stdgo._internal.net.http;
function _parsePostForm(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo._internal.net.url.Url_Values.Values; var _1 : stdgo.Error; } {
        var _vs = (null : stdgo._internal.net.url.Url_Values.Values), _err = (null : stdgo.Error);
        if ((@:checkr _r ?? throw "null pointer dereference").body == null) {
            _err = stdgo._internal.errors.Errors_new_.new_(("missing form body" : stdgo.GoString));
            return { _0 : _vs, _1 : _err };
        };
        var _ct = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_ct == (stdgo.Go.str())) {
            _ct = ("application/octet-stream" : stdgo.GoString);
        };
        {
            var __tmp__ = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_ct?.__copy__());
            _ct = __tmp__._0?.__copy__();
            _err = __tmp__._2;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (_ct == (("application/x-www-form-urlencoded" : stdgo.GoString))) {
                    var _reader:stdgo._internal.io.Io_Reader.Reader = (@:checkr _r ?? throw "null pointer dereference").body;
                    var _maxFormSize = ((9223372036854775807i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").body) : stdgo.Ref<stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader>), _1 : false };
                        }, __137 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _maxFormSize = (10485760i64 : stdgo.GoInt64);
                            _reader = stdgo._internal.io.Io_limitReader.limitReader((@:checkr _r ?? throw "null pointer dereference").body, (_maxFormSize + (1i64 : stdgo.GoInt64) : stdgo.GoInt64));
                        };
                    };
                    var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_reader), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                    if (_e != null) {
                        if (_err == null) {
                            _err = _e;
                        };
                        break;
                    };
                    if (((_b.length : stdgo.GoInt64) > _maxFormSize : Bool)) {
                        _err = stdgo._internal.errors.Errors_new_.new_(("http: POST too large" : stdgo.GoString));
                        return { _0 : _vs, _1 : _err };
                    };
                    {
                        var __tmp__ = stdgo._internal.net.url.Url_parseQuery.parseQuery((_b : stdgo.GoString)?.__copy__());
                        _vs = __tmp__._0;
                        _e = __tmp__._1;
                    };
                    if (_err == null) {
                        _err = _e;
                    };
                    break;
                } else if (_ct == (("multipart/form-data" : stdgo.GoString))) {
                    break;
                };
                break;
            };
        };
        return { _0 : _vs, _1 : _err };
    }
