package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Request_asInterface) class Request_static_extension {
    @:keep
    @:tdfield
    static public function _requiresHTTP1( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return (stdgo._internal.net.http.Http__hasToken._hasToken((@:checkr _r ?? throw "null pointer dereference").header.get(("Connection" : stdgo.GoString))?.__copy__(), ("upgrade" : stdgo.GoString)) && stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold((@:checkr _r ?? throw "null pointer dereference").header.get(("Upgrade" : stdgo.GoString))?.__copy__(), ("websocket" : stdgo.GoString)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _outgoingLength( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((((@:checkr _r ?? throw "null pointer dereference").body == null) || (stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return (0i64 : stdgo.GoInt64);
        };
        if ((@:checkr _r ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64))) {
            return (@:checkr _r ?? throw "null pointer dereference").contentLength;
        };
        return (-1i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _isReplayable( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((((@:checkr _r ?? throw "null pointer dereference").body == null || stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").body) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool) || ((@:checkr _r ?? throw "null pointer dereference").getBody != null) : Bool)) {
            {
                final __value__ = stdgo._internal.net.http.Http__valueOrDefault._valueOrDefault((@:checkr _r ?? throw "null pointer dereference").method?.__copy__(), ("GET" : stdgo.GoString));
                if (__value__ == (("GET" : stdgo.GoString)) || __value__ == (("HEAD" : stdgo.GoString)) || __value__ == (("OPTIONS" : stdgo.GoString)) || __value__ == (("TRACE" : stdgo.GoString))) {
                    return true;
                };
            };
            if (((@:checkr _r ?? throw "null pointer dereference").header._has(("Idempotency-Key" : stdgo.GoString)) || (@:checkr _r ?? throw "null pointer dereference").header._has(("X-Idempotency-Key" : stdgo.GoString)) : Bool)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _closeBody( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").body == null) {
            return (null : stdgo.Error);
        };
        return (@:checkr _r ?? throw "null pointer dereference").body.close();
    }
    @:keep
    @:tdfield
    static public function _wantsClose( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").close) {
            return true;
        };
        return stdgo._internal.net.http.Http__hasToken._hasToken((@:checkr _r ?? throw "null pointer dereference").header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _wantsHttp10KeepAlive( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((((@:checkr _r ?? throw "null pointer dereference").protoMajor != (1 : stdgo.GoInt)) || ((@:checkr _r ?? throw "null pointer dereference").protoMinor != (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        return stdgo._internal.net.http.Http__hasToken._hasToken((@:checkr _r ?? throw "null pointer dereference").header._get(("Connection" : stdgo.GoString))?.__copy__(), ("keep-alive" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _expectsContinue( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return stdgo._internal.net.http.Http__hasToken._hasToken((@:checkr _r ?? throw "null pointer dereference").header._get(("Expect" : stdgo.GoString))?.__copy__(), ("100-continue" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function formFile( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").multipartForm == (stdgo._internal.net.http.Http__multipartByReader._multipartByReader)) {
            return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by MultipartReader" : stdgo.GoString)) };
        };
        if (((@:checkr _r ?? throw "null pointer dereference").multipartForm == null || ((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__)) {
            var _err = (@:check2r _r.parseMultipartForm((33554432i64 : stdgo.GoInt64)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : null, _2 : _err };
            };
        };
        if ((((@:checkr _r ?? throw "null pointer dereference").multipartForm != null && (((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__)) && ((@:checkr (@:checkr _r ?? throw "null pointer dereference").multipartForm ?? throw "null pointer dereference").file != null) : Bool)) {
            {
                var _fhs = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").multipartForm ?? throw "null pointer dereference").file[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>));
                if (((_fhs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = @:check2r _fhs[(0 : stdgo.GoInt)].open(), _f:stdgo._internal.mime.multipart.Multipart_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    return { _0 : _f, _1 : _fhs[(0 : stdgo.GoInt)], _2 : _err };
                };
            };
        };
        return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : null, _2 : stdgo._internal.net.http.Http_errMissingFile.errMissingFile };
    }
    @:keep
    @:tdfield
    static public function postFormValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
            @:check2r _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        {
            var _vs = ((@:checkr _r ?? throw "null pointer dereference").postForm[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function formValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
            @:check2r _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        {
            var _vs = ((@:checkr _r ?? throw "null pointer dereference").form[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function parseMultipartForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _maxMemory:stdgo.GoInt64):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").multipartForm == (stdgo._internal.net.http.Http__multipartByReader._multipartByReader)) {
            return stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by MultipartReader" : stdgo.GoString));
        };
        var _parseFormErr:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
            _parseFormErr = @:check2r _r.parseForm();
        };
        if (((@:checkr _r ?? throw "null pointer dereference").multipartForm != null && (((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r _r._multipartReader(false), _mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = @:check2r _mr.readForm(_maxMemory), _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
            (@:checkr _r ?? throw "null pointer dereference").postForm = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
        };
        for (_k => _v in (@:checkr _f ?? throw "null pointer dereference").value) {
            (@:checkr _r ?? throw "null pointer dereference").form[_k] = (((@:checkr _r ?? throw "null pointer dereference").form[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)));
            (@:checkr _r ?? throw "null pointer dereference").postForm[_k] = (((@:checkr _r ?? throw "null pointer dereference").postForm[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)));
        };
        (@:checkr _r ?? throw "null pointer dereference").multipartForm = _f;
        return _parseFormErr;
    }
    @:keep
    @:tdfield
    static public function parseForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
            if ((((@:checkr _r ?? throw "null pointer dereference").method == (("POST" : stdgo.GoString)) || (@:checkr _r ?? throw "null pointer dereference").method == (("PUT" : stdgo.GoString)) : Bool) || ((@:checkr _r ?? throw "null pointer dereference").method == ("PATCH" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__parsePostForm._parsePostForm(_r);
                    (@:checkr _r ?? throw "null pointer dereference").postForm = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
                (@:checkr _r ?? throw "null pointer dereference").postForm = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
            };
        };
        if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
            if ((((@:checkr _r ?? throw "null pointer dereference").postForm.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference").form = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
                stdgo._internal.net.http.Http__copyValues._copyValues((@:checkr _r ?? throw "null pointer dereference").form, (@:checkr _r ?? throw "null pointer dereference").postForm);
            };
            var _newValues:stdgo._internal.net.url.Url_Values.Values = (null : stdgo._internal.net.url.Url_Values.Values);
            if (((@:checkr _r ?? throw "null pointer dereference").uRL != null && (((@:checkr _r ?? throw "null pointer dereference").uRL : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").uRL : Dynamic).__nil__))) {
                var _e:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.url.Url_parseQuery.parseQuery((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__());
                    _newValues = __tmp__._0;
                    _e = __tmp__._1;
                };
                if (_err == null) {
                    _err = _e;
                };
            };
            if (_newValues == null) {
                _newValues = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
            };
            if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
                (@:checkr _r ?? throw "null pointer dereference").form = _newValues;
            } else {
                stdgo._internal.net.http.Http__copyValues._copyValues((@:checkr _r ?? throw "null pointer dereference").form, _newValues);
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function setBasicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _username:stdgo.GoString, _password:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        (@:checkr _r ?? throw "null pointer dereference").header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicAuth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function basicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _username = ("" : stdgo.GoString), _password = ("" : stdgo.GoString), _ok = false;
        var _auth = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Authorization" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_auth == (stdgo.Go.str())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
                _username = __tmp__._0;
                _password = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = stdgo._internal.net.http.Http__parseBasicAuth._parseBasicAuth(_auth?.__copy__());
            _username = __tmp__._0;
            _password = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _write( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_Header.Header, _waitForContinue:() -> Bool):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(@:check2r _r.context());
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteRequest != null) : Bool)) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            (@:checkr _trace ?? throw "null pointer dereference").wroteRequest(({ err : _err } : stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo));
                        };
                        a();
                    }) });
                };
            };
            var _closed = (false : Bool);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (_closed) {
                            return;
                        };
                        {
                            var _closeErr = (@:check2r _r._closeBody() : stdgo.Error);
                            if (((_closeErr != null) && (_err == null) : Bool)) {
                                _err = _closeErr;
                            };
                        };
                    };
                    a();
                }) });
            };
            var _host = ((@:checkr _r ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
            if (_host == (stdgo.Go.str())) {
                if (((@:checkr _r ?? throw "null pointer dereference").uRL == null || ((@:checkr _r ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) {
                    {
                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__errMissingHost._errMissingHost;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                _host = (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__();
            };
            {
                var __tmp__ = _internal.golang_dot_org.x.net.http.httpguts.Httpguts_punycodeHostPort.punycodeHostPort(_host?.__copy__());
                _host = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHostHeader.validHostHeader(_host?.__copy__())) {
                if (!_usingProxy) {
                    _host = stdgo.Go.str()?.__copy__();
                } else {
                    {
                        final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("http: invalid Host header" : stdgo.GoString));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            _host = stdgo._internal.net.http.Http__removeZone._removeZone(_host?.__copy__())?.__copy__();
            var _ruri = (@:check2r (@:checkr _r ?? throw "null pointer dereference").uRL.requestURI()?.__copy__() : stdgo.GoString);
            if (((_usingProxy && (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme != (stdgo.Go.str()) : Bool) && ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").opaque == stdgo.Go.str()) : Bool)) {
                _ruri = ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme + ("://" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString) + _ruri?.__copy__() : stdgo.GoString)?.__copy__();
            } else if ((((@:checkr _r ?? throw "null pointer dereference").method == ("CONNECT" : stdgo.GoString)) && ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path == stdgo.Go.str()) : Bool)) {
                _ruri = _host?.__copy__();
                if ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").opaque != (stdgo.Go.str())) {
                    _ruri = (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").opaque?.__copy__();
                };
            };
            if (stdgo._internal.net.http.Http__stringContainsCTLByte._stringContainsCTLByte(_ruri?.__copy__())) {
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("net/http: can\'t write control character in Request.URL" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_ByteWriter.ByteWriter)) : stdgo._internal.io.Io_ByteWriter.ByteWriter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.Io_ByteWriter.ByteWriter), _1 : false };
                }, __33777 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _bw = stdgo._internal.bufio.Bufio_newWriter.newWriter(_w);
                    _w = stdgo.Go.asInterface(_bw);
                };
            };
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s %s HTTP/1.1\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__valueOrDefault._valueOrDefault((@:checkr _r ?? throw "null pointer dereference").method?.__copy__(), ("GET" : stdgo.GoString))), stdgo.Go.toInterface(_ruri));
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("Host: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_host));
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool)) {
                (@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField(("Host" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_host?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
            var _userAgent = ("Go-http-client/1.1" : stdgo.GoString);
            if ((@:checkr _r ?? throw "null pointer dereference").header._has(("User-Agent" : stdgo.GoString))) {
                _userAgent = (@:checkr _r ?? throw "null pointer dereference").header.get(("User-Agent" : stdgo.GoString))?.__copy__();
            };
            if (_userAgent != (stdgo.Go.str())) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("User-Agent: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_userAgent));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField(("User-Agent" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_userAgent?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
                };
            };
            var __tmp__ = stdgo._internal.net.http.Http__newTransferWriter._newTransferWriter(stdgo.Go.toInterface(stdgo.Go.asInterface(_r))), _tw:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            _err = @:check2r _tw._writeHeader(_w, _trace);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            _err = (@:checkr _r ?? throw "null pointer dereference").header._writeSubset(_w, stdgo._internal.net.http.Http__reqWriteExcludeHeader._reqWriteExcludeHeader, _trace);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            if (_extraHeaders != null) {
                _err = _extraHeaders._write(_w, _trace);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("\r\n" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaders != null) : Bool)) {
                (@:checkr _trace ?? throw "null pointer dereference").wroteHeaders();
            };
            if (_waitForContinue != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : false };
                    }, _bw = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = @:check2r _bw.flush();
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _err;
                            };
                        };
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wait100Continue != null) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").wait100Continue();
                };
                if (!_waitForContinue()) {
                    _closed = true;
                    @:check2r _r._closeBody();
                    {
                        final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : false };
                }, _bw = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (@:checkr _tw ?? throw "null pointer dereference").flushHeaders : Bool)) {
                    {
                        var _err = (@:check2r _bw.flush() : stdgo.Error);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _err;
                            };
                        };
                    };
                };
            };
            _closed = true;
            _err = @:check2r _tw._writeBody(_w);
            if (_err != null) {
                if (stdgo.Go.toInterface((@:checkr _tw ?? throw "null pointer dereference")._bodyReadError) == (stdgo.Go.toInterface(_err))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError(_err) : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError));
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            if ((_bw != null && ((_bw : Dynamic).__nil__ == null || !(_bw : Dynamic).__nil__))) {
                {
                    final __ret__:stdgo.Error = _err = @:check2r _bw.flush();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    @:tdfield
    static public function writeProxy( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return @:check2r _r._write(_w, true, null, null);
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return @:check2r _r._write(_w, false, null, null);
    }
    @:keep
    @:tdfield
    static public function _isH2Upgrade( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return ((((@:checkr _r ?? throw "null pointer dereference").method == (("PRI" : stdgo.GoString)) && ((@:checkr _r ?? throw "null pointer dereference").header.length) == ((0 : stdgo.GoInt)) : Bool) && (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path == (("*" : stdgo.GoString)) : Bool) && ((@:checkr _r ?? throw "null pointer dereference").proto == ("HTTP/2.0" : stdgo.GoString)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _allowMixed:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _v = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_v == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errNotMultipart.errNotMultipart) };
        };
        if ((@:checkr _r ?? throw "null pointer dereference").body == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("missing form body" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_v?.__copy__()), _d:stdgo.GoString = __tmp__._0, _params:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_err != null) || !(((_d == ("multipart/form-data" : stdgo.GoString)) || (_allowMixed && _d == (("multipart/mixed" : stdgo.GoString)) : Bool) : Bool)) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errNotMultipart.errNotMultipart) };
        };
        var __tmp__ = (_params != null && _params.exists(("boundary" : stdgo.GoString)) ? { _0 : _params[("boundary" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _boundary:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errMissingBoundary.errMissingBoundary) };
        };
        return { _0 : stdgo._internal.mime.multipart.Multipart_newReader.newReader((@:checkr _r ?? throw "null pointer dereference").body, _boundary?.__copy__()), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").multipartForm == (stdgo._internal.net.http.Http__multipartByReader._multipartByReader)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: MultipartReader called twice" : stdgo.GoString)) };
        };
        if (((@:checkr _r ?? throw "null pointer dereference").multipartForm != null && (((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by ParseMultipartForm" : stdgo.GoString)) };
        };
        (@:checkr _r ?? throw "null pointer dereference").multipartForm = stdgo._internal.net.http.Http__multipartByReader._multipartByReader;
        return @:check2r _r._multipartReader(true);
    }
    @:keep
    @:tdfield
    static public function referer( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return (@:checkr _r ?? throw "null pointer dereference").header.get(("Referer" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function addCookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__sanitizeCookieName._sanitizeCookieName((@:checkr _c ?? throw "null pointer dereference").name?.__copy__())), stdgo.Go.toInterface(stdgo._internal.net.http.Http__sanitizeCookieValue._sanitizeCookieValue((@:checkr _c ?? throw "null pointer dereference").value?.__copy__())))?.__copy__() : stdgo.GoString);
        {
            var _c = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Cookie" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_c != (stdgo.Go.str())) {
                (@:checkr _r ?? throw "null pointer dereference").header.set(("Cookie" : stdgo.GoString), ((_c + ("; " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__());
            } else {
                (@:checkr _r ?? throw "null pointer dereference").header.set(("Cookie" : stdgo.GoString), _s?.__copy__());
            };
        };
    }
    @:keep
    @:tdfield
    static public function cookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_name == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errNoCookie.errNoCookie };
        };
        for (__33777 => _c in stdgo._internal.net.http.Http__readCookies._readCookies((@:checkr _r ?? throw "null pointer dereference").header, _name?.__copy__())) {
            return { _0 : _c, _1 : (null : stdgo.Error) };
        };
        return { _0 : null, _1 : stdgo._internal.net.http.Http_errNoCookie.errNoCookie };
    }
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return stdgo._internal.net.http.Http__readCookies._readCookies((@:checkr _r ?? throw "null pointer dereference").header, stdgo.Go.str()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function userAgent( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return (@:checkr _r ?? throw "null pointer dereference").header.get(("User-Agent" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference").protoMajor > _major : Bool) || ((@:checkr _r ?? throw "null pointer dereference").protoMajor == (_major) && ((@:checkr _r ?? throw "null pointer dereference").protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function clone( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_ctx == null) {
            throw stdgo.Go.toInterface(("nil context" : stdgo.GoString));
        };
        var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
            var x = (_r2 : stdgo._internal.net.http.Http_Request.Request);
            x.method = __tmp__.method;
            x.uRL = __tmp__.uRL;
            x.proto = __tmp__.proto;
            x.protoMajor = __tmp__.protoMajor;
            x.protoMinor = __tmp__.protoMinor;
            x.header = __tmp__.header;
            x.body = __tmp__.body;
            x.getBody = __tmp__.getBody;
            x.contentLength = __tmp__.contentLength;
            x.transferEncoding = __tmp__.transferEncoding;
            x.close = __tmp__.close;
            x.host = __tmp__.host;
            x.form = __tmp__.form;
            x.postForm = __tmp__.postForm;
            x.multipartForm = __tmp__.multipartForm;
            x.trailer = __tmp__.trailer;
            x.remoteAddr = __tmp__.remoteAddr;
            x.requestURI = __tmp__.requestURI;
            x.tLS = __tmp__.tLS;
            x.cancel = __tmp__.cancel;
            x.response = __tmp__.response;
            x._ctx = __tmp__._ctx;
        };
        (@:checkr _r2 ?? throw "null pointer dereference")._ctx = _ctx;
        (@:checkr _r2 ?? throw "null pointer dereference").uRL = stdgo._internal.net.http.Http__cloneURL._cloneURL((@:checkr _r ?? throw "null pointer dereference").uRL);
        if ((@:checkr _r ?? throw "null pointer dereference").header != null) {
            (@:checkr _r2 ?? throw "null pointer dereference").header = (@:checkr _r ?? throw "null pointer dereference").header.clone();
        };
        if ((@:checkr _r ?? throw "null pointer dereference").trailer != null) {
            (@:checkr _r2 ?? throw "null pointer dereference").trailer = (@:checkr _r ?? throw "null pointer dereference").trailer.clone();
        };
        {
            var _s = (@:checkr _r ?? throw "null pointer dereference").transferEncoding;
            if (_s != null) {
                var _s2 = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                _s2.__copyTo__(_s);
                (@:checkr _r2 ?? throw "null pointer dereference").transferEncoding = _s2;
            };
        };
        (@:checkr _r2 ?? throw "null pointer dereference").form = stdgo._internal.net.http.Http__cloneURLValues._cloneURLValues((@:checkr _r ?? throw "null pointer dereference").form);
        (@:checkr _r2 ?? throw "null pointer dereference").postForm = stdgo._internal.net.http.Http__cloneURLValues._cloneURLValues((@:checkr _r ?? throw "null pointer dereference").postForm);
        (@:checkr _r2 ?? throw "null pointer dereference").multipartForm = stdgo._internal.net.http.Http__cloneMultipartForm._cloneMultipartForm((@:checkr _r ?? throw "null pointer dereference").multipartForm);
        return _r2;
    }
    @:keep
    @:tdfield
    static public function withContext( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_ctx == null) {
            throw stdgo.Go.toInterface(("nil context" : stdgo.GoString));
        };
        var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
            var x = (_r2 : stdgo._internal.net.http.Http_Request.Request);
            x.method = __tmp__.method;
            x.uRL = __tmp__.uRL;
            x.proto = __tmp__.proto;
            x.protoMajor = __tmp__.protoMajor;
            x.protoMinor = __tmp__.protoMinor;
            x.header = __tmp__.header;
            x.body = __tmp__.body;
            x.getBody = __tmp__.getBody;
            x.contentLength = __tmp__.contentLength;
            x.transferEncoding = __tmp__.transferEncoding;
            x.close = __tmp__.close;
            x.host = __tmp__.host;
            x.form = __tmp__.form;
            x.postForm = __tmp__.postForm;
            x.multipartForm = __tmp__.multipartForm;
            x.trailer = __tmp__.trailer;
            x.remoteAddr = __tmp__.remoteAddr;
            x.requestURI = __tmp__.requestURI;
            x.tLS = __tmp__.tLS;
            x.cancel = __tmp__.cancel;
            x.response = __tmp__.response;
            x._ctx = __tmp__._ctx;
        };
        (@:checkr _r2 ?? throw "null pointer dereference")._ctx = _ctx;
        return _r2;
    }
    @:keep
    @:tdfield
    static public function context( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo._internal.context.Context_Context.Context {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._ctx != null) {
            return (@:checkr _r ?? throw "null pointer dereference")._ctx;
        };
        return stdgo._internal.context.Context_background.background();
    }
}
