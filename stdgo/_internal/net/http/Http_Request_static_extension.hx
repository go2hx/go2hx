package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Request_asInterface) class Request_static_extension {
    @:keep
    static public function _requiresHTTP1( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return (stdgo._internal.net.http.Http__hasToken._hasToken(_r.header.get(("Connection" : stdgo.GoString))?.__copy__(), ("upgrade" : stdgo.GoString)) && stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold(_r.header.get(("Upgrade" : stdgo.GoString))?.__copy__(), ("websocket" : stdgo.GoString)) : Bool);
    }
    @:keep
    static public function _outgoingLength( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (((_r.body == null) || (stdgo.Go.toInterface(_r.body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return (0i64 : stdgo.GoInt64);
        };
        if (_r.contentLength != ((0i64 : stdgo.GoInt64))) {
            return _r.contentLength;
        };
        return (-1i64 : stdgo.GoInt64);
    }
    @:keep
    static public function _isReplayable( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (((_r.body == null || stdgo.Go.toInterface(_r.body) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool) || (_r.getBody != null) : Bool)) {
            {
                final __value__ = stdgo._internal.net.http.Http__valueOrDefault._valueOrDefault(_r.method?.__copy__(), ("GET" : stdgo.GoString));
                if (__value__ == (("GET" : stdgo.GoString)) || __value__ == (("HEAD" : stdgo.GoString)) || __value__ == (("OPTIONS" : stdgo.GoString)) || __value__ == (("TRACE" : stdgo.GoString))) {
                    return true;
                };
            };
            if ((_r.header._has(("Idempotency-Key" : stdgo.GoString)) || _r.header._has(("X-Idempotency-Key" : stdgo.GoString)) : Bool)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _closeBody( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.body == null) {
            return (null : stdgo.Error);
        };
        return _r.body.close();
    }
    @:keep
    static public function _wantsClose( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.close) {
            return true;
        };
        return stdgo._internal.net.http.Http__hasToken._hasToken(_r.header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString));
    }
    @:keep
    static public function _wantsHttp10KeepAlive( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (((_r.protoMajor != (1 : stdgo.GoInt)) || (_r.protoMinor != (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        return stdgo._internal.net.http.Http__hasToken._hasToken(_r.header._get(("Connection" : stdgo.GoString))?.__copy__(), ("keep-alive" : stdgo.GoString));
    }
    @:keep
    static public function _expectsContinue( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return stdgo._internal.net.http.Http__hasToken._hasToken(_r.header._get(("Expect" : stdgo.GoString))?.__copy__(), ("100-continue" : stdgo.GoString));
    }
    @:keep
    static public function formFile( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.multipartForm == (stdgo._internal.net.http.Http__multipartByReader._multipartByReader)) {
            return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by MultipartReader" : stdgo.GoString)) };
        };
        if ((_r.multipartForm == null || (_r.multipartForm : Dynamic).__nil__)) {
            var _err = (_r.parseMultipartForm((33554432i64 : stdgo.GoInt64)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : null, _2 : _err };
            };
        };
        if (((_r.multipartForm != null && ((_r.multipartForm : Dynamic).__nil__ == null || !(_r.multipartForm : Dynamic).__nil__)) && (_r.multipartForm.file != null) : Bool)) {
            {
                var _fhs = (_r.multipartForm.file[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>));
                if (((_fhs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = _fhs[(0 : stdgo.GoInt)].open(), _f:stdgo._internal.mime.multipart.Multipart_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    return { _0 : _f, _1 : _fhs[(0 : stdgo.GoInt)], _2 : _err };
                };
            };
        };
        return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : null, _2 : stdgo._internal.net.http.Http_errMissingFile.errMissingFile };
    }
    @:keep
    static public function postFormValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.postForm == null) {
            _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        {
            var _vs = (_r.postForm[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function formValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.form == null) {
            _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        {
            var _vs = (_r.form[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function parseMultipartForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _maxMemory:stdgo.GoInt64):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.multipartForm == (stdgo._internal.net.http.Http__multipartByReader._multipartByReader)) {
            return stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by MultipartReader" : stdgo.GoString));
        };
        var _parseFormErr:stdgo.Error = (null : stdgo.Error);
        if (_r.form == null) {
            _parseFormErr = _r.parseForm();
        };
        if ((_r.multipartForm != null && ((_r.multipartForm : Dynamic).__nil__ == null || !(_r.multipartForm : Dynamic).__nil__))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = _r._multipartReader(false), _mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _mr.readForm(_maxMemory), _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_r.postForm == null) {
            _r.postForm = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
        };
        for (_k => _v in _f.value) {
            _r.form[_k] = ((_r.form[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)));
            _r.postForm[_k] = ((_r.postForm[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)));
        };
        _r.multipartForm = _f;
        return _parseFormErr;
    }
    @:keep
    static public function parseForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_r.postForm == null) {
            if (((_r.method == (("POST" : stdgo.GoString)) || _r.method == (("PUT" : stdgo.GoString)) : Bool) || (_r.method == ("PATCH" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__parsePostForm._parsePostForm(_r);
                    _r.postForm = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_r.postForm == null) {
                _r.postForm = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
            };
        };
        if (_r.form == null) {
            if (((_r.postForm.length) > (0 : stdgo.GoInt) : Bool)) {
                _r.form = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_Values.Values);
                stdgo._internal.net.http.Http__copyValues._copyValues(_r.form, _r.postForm);
            };
            var _newValues:stdgo._internal.net.url.Url_Values.Values = (null : stdgo._internal.net.url.Url_Values.Values);
            if ((_r.url != null && ((_r.url : Dynamic).__nil__ == null || !(_r.url : Dynamic).__nil__))) {
                var _e:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.url.Url_parseQuery.parseQuery(_r.url.rawQuery?.__copy__());
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
            if (_r.form == null) {
                _r.form = _newValues;
            } else {
                stdgo._internal.net.http.Http__copyValues._copyValues(_r.form, _newValues);
            };
        };
        return _err;
    }
    @:keep
    static public function setBasicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _username:stdgo.GoString, _password:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        _r.header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicAuth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function basicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _username = ("" : stdgo.GoString), _password = ("" : stdgo.GoString), _ok = false;
        var _auth = (_r.header.get(("Authorization" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_auth == (stdgo.Go.str())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        return stdgo._internal.net.http.Http__parseBasicAuth._parseBasicAuth(_auth?.__copy__());
    }
    @:keep
    static public function _write( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_Header.Header, _waitForContinue:() -> Bool):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_r.context());
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteRequest != null) : Bool)) {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        _trace.wroteRequest(({ err : _err } : stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo));
                    };
                    a();
                });
            };
            var _closed = (false : Bool);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_closed) {
                        return;
                    };
                    {
                        var _closeErr = (_r._closeBody() : stdgo.Error);
                        if (((_closeErr != null) && (_err == null) : Bool)) {
                            _err = _closeErr;
                        };
                    };
                };
                a();
            });
            var _host = (_r.host?.__copy__() : stdgo.GoString);
            if (_host == (stdgo.Go.str())) {
                if ((_r.url == null || (_r.url : Dynamic).__nil__)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo._internal.net.http.Http__errMissingHost._errMissingHost;
                    };
                };
                _host = _r.url.host?.__copy__();
            };
            {
                var __tmp__ = _internal.golang_dot_org.x.net.http.httpguts.Httpguts_punycodeHostPort.punycodeHostPort(_host?.__copy__());
                _host = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHostHeader.validHostHeader(_host?.__copy__())) {
                if (!_usingProxy) {
                    _host = stdgo.Go.str()?.__copy__();
                } else {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("http: invalid Host header" : stdgo.GoString));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            _host = stdgo._internal.net.http.Http__removeZone._removeZone(_host?.__copy__())?.__copy__();
            var _ruri = (_r.url.requestURI()?.__copy__() : stdgo.GoString);
            if (((_usingProxy && _r.url.scheme != (stdgo.Go.str()) : Bool) && (_r.url.opaque == stdgo.Go.str()) : Bool)) {
                _ruri = (((_r.url.scheme + ("://" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString) + _ruri?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (((_r.method == ("CONNECT" : stdgo.GoString)) && (_r.url.path == stdgo.Go.str()) : Bool)) {
                _ruri = _host?.__copy__();
                if (_r.url.opaque != (stdgo.Go.str())) {
                    _ruri = _r.url.opaque?.__copy__();
                };
            };
            if (stdgo._internal.net.http.Http__stringContainsCTLByte._stringContainsCTLByte(_ruri?.__copy__())) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("net/http: can\'t write control character in Request.URL" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
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
                }, __33772 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _bw = stdgo._internal.bufio.Bufio_newWriter.newWriter(_w);
                    _w = stdgo.Go.asInterface(_bw);
                };
            };
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s %s HTTP/1.1\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__valueOrDefault._valueOrDefault(_r.method?.__copy__(), ("GET" : stdgo.GoString))), stdgo.Go.toInterface(_ruri));
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
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
                        defer();
                    };
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteHeaderField != null) : Bool)) {
                _trace.wroteHeaderField(("Host" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_host?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
            var _userAgent = ("Go-http-client/1.1" : stdgo.GoString);
            if (_r.header._has(("User-Agent" : stdgo.GoString))) {
                _userAgent = _r.header.get(("User-Agent" : stdgo.GoString))?.__copy__();
            };
            if (_userAgent != (stdgo.Go.str())) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("User-Agent: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_userAgent));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteHeaderField != null) : Bool)) {
                    _trace.wroteHeaderField(("User-Agent" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_userAgent?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
                };
            };
            var __tmp__ = stdgo._internal.net.http.Http__newTransferWriter._newTransferWriter(stdgo.Go.toInterface(stdgo.Go.asInterface(_r))), _tw:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _err = _tw._writeHeader(_w, _trace);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _err = _r.header._writeSubset(_w, stdgo._internal.net.http.Http__reqWriteExcludeHeader._reqWriteExcludeHeader, _trace);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            if (_extraHeaders != null) {
                _err = _extraHeaders._write(_w, _trace);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
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
                        defer();
                    };
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteHeaders != null) : Bool)) {
                _trace.wroteHeaders();
            };
            if (_waitForContinue != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : false };
                    }, _bw = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = _bw.flush();
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return _err;
                            };
                        };
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wait100Continue != null) : Bool)) {
                    _trace.wait100Continue();
                };
                if (!_waitForContinue()) {
                    _closed = true;
                    _r._closeBody();
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
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
                if ((_ok && _tw.flushHeaders : Bool)) {
                    {
                        var _err = (_bw.flush() : stdgo.Error);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return _err;
                            };
                        };
                    };
                };
            };
            _closed = true;
            _err = _tw._writeBody(_w);
            if (_err != null) {
                if (stdgo.Go.toInterface(_tw._bodyReadError) == (stdgo.Go.toInterface(_err))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError(_err) : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            if ((_bw != null && ((_bw : Dynamic).__nil__ == null || !(_bw : Dynamic).__nil__))) {
                {
                    final __ret__:stdgo.Error = _bw.flush();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function writeProxy( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return _r._write(_w, true, null, null);
    }
    @:keep
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return _r._write(_w, false, null, null);
    }
    @:keep
    static public function _isH2Upgrade( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return (((_r.method == (("PRI" : stdgo.GoString)) && (_r.header.length) == ((0 : stdgo.GoInt)) : Bool) && _r.url.path == (("*" : stdgo.GoString)) : Bool) && (_r.proto == ("HTTP/2.0" : stdgo.GoString)) : Bool);
    }
    @:keep
    static public function _multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _allowMixed:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _v = (_r.header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_v == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errNotMultipart.errNotMultipart) };
        };
        if (_r.body == null) {
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
        return { _0 : stdgo._internal.mime.multipart.Multipart_newReader.newReader(_r.body, _boundary?.__copy__()), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r.multipartForm == (stdgo._internal.net.http.Http__multipartByReader._multipartByReader)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: MultipartReader called twice" : stdgo.GoString)) };
        };
        if ((_r.multipartForm != null && ((_r.multipartForm : Dynamic).__nil__ == null || !(_r.multipartForm : Dynamic).__nil__))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by ParseMultipartForm" : stdgo.GoString)) };
        };
        _r.multipartForm = stdgo._internal.net.http.Http__multipartByReader._multipartByReader;
        return _r._multipartReader(true);
    }
    @:keep
    static public function referer( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return _r.header.get(("Referer" : stdgo.GoString))?.__copy__();
    }
    @:keep
    static public function addCookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__sanitizeCookieName._sanitizeCookieName(_c.name?.__copy__())), stdgo.Go.toInterface(stdgo._internal.net.http.Http__sanitizeCookieValue._sanitizeCookieValue(_c.value?.__copy__())))?.__copy__() : stdgo.GoString);
        {
            var _c = (_r.header.get(("Cookie" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_c != (stdgo.Go.str())) {
                _r.header.set(("Cookie" : stdgo.GoString), ((_c + ("; " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__());
            } else {
                _r.header.set(("Cookie" : stdgo.GoString), _s?.__copy__());
            };
        };
    }
    @:keep
    static public function cookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_name == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errNoCookie.errNoCookie };
        };
        for (__33772 => _c in stdgo._internal.net.http.Http__readCookies._readCookies(_r.header, _name?.__copy__())) {
            return { _0 : _c, _1 : (null : stdgo.Error) };
        };
        return { _0 : null, _1 : stdgo._internal.net.http.Http_errNoCookie.errNoCookie };
    }
    @:keep
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return stdgo._internal.net.http.Http__readCookies._readCookies(_r.header, stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function userAgent( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return _r.header.get(("User-Agent" : stdgo.GoString))?.__copy__();
    }
    @:keep
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        return ((_r.protoMajor > _major : Bool) || (_r.protoMajor == (_major) && (_r.protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    static public function clone( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_ctx == null) {
            throw stdgo.Go.toInterface(("nil context" : stdgo.GoString));
        };
        var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
            (_r2 : stdgo._internal.net.http.Http_Request.Request).method = __tmp__.method;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).url = __tmp__.url;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).proto = __tmp__.proto;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).protoMajor = __tmp__.protoMajor;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).protoMinor = __tmp__.protoMinor;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).header = __tmp__.header;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).body = __tmp__.body;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).getBody = __tmp__.getBody;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).contentLength = __tmp__.contentLength;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).transferEncoding = __tmp__.transferEncoding;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).close = __tmp__.close;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).host = __tmp__.host;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).form = __tmp__.form;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).postForm = __tmp__.postForm;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).multipartForm = __tmp__.multipartForm;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).trailer = __tmp__.trailer;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).remoteAddr = __tmp__.remoteAddr;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).requestURI = __tmp__.requestURI;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).tls = __tmp__.tls;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).cancel = __tmp__.cancel;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).response = __tmp__.response;
            (_r2 : stdgo._internal.net.http.Http_Request.Request)._ctx = __tmp__._ctx;
        };
        _r2._ctx = _ctx;
        _r2.url = stdgo._internal.net.http.Http__cloneURL._cloneURL(_r.url);
        if (_r.header != null) {
            _r2.header = _r.header.clone();
        };
        if (_r.trailer != null) {
            _r2.trailer = _r.trailer.clone();
        };
        {
            var _s = _r.transferEncoding;
            if (_s != null) {
                var _s2 = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                stdgo.Go.copySlice(_s2, _s);
                _r2.transferEncoding = _s2;
            };
        };
        _r2.form = stdgo._internal.net.http.Http__cloneURLValues._cloneURLValues(_r.form);
        _r2.postForm = stdgo._internal.net.http.Http__cloneURLValues._cloneURLValues(_r.postForm);
        _r2.multipartForm = stdgo._internal.net.http.Http__cloneMultipartForm._cloneMultipartForm(_r.multipartForm);
        return _r2;
    }
    @:keep
    static public function withContext( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_ctx == null) {
            throw stdgo.Go.toInterface(("nil context" : stdgo.GoString));
        };
        var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
            (_r2 : stdgo._internal.net.http.Http_Request.Request).method = __tmp__.method;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).url = __tmp__.url;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).proto = __tmp__.proto;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).protoMajor = __tmp__.protoMajor;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).protoMinor = __tmp__.protoMinor;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).header = __tmp__.header;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).body = __tmp__.body;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).getBody = __tmp__.getBody;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).contentLength = __tmp__.contentLength;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).transferEncoding = __tmp__.transferEncoding;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).close = __tmp__.close;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).host = __tmp__.host;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).form = __tmp__.form;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).postForm = __tmp__.postForm;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).multipartForm = __tmp__.multipartForm;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).trailer = __tmp__.trailer;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).remoteAddr = __tmp__.remoteAddr;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).requestURI = __tmp__.requestURI;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).tls = __tmp__.tls;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).cancel = __tmp__.cancel;
            (_r2 : stdgo._internal.net.http.Http_Request.Request).response = __tmp__.response;
            (_r2 : stdgo._internal.net.http.Http_Request.Request)._ctx = __tmp__._ctx;
        };
        _r2._ctx = _ctx;
        return _r2;
    }
    @:keep
    static public function context( _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo._internal.context.Context_Context.Context {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = _r;
        if (_r._ctx != null) {
            return _r._ctx;
        };
        return stdgo._internal.context.Context_background.background();
    }
}
