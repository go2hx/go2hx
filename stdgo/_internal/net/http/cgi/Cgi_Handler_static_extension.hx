package stdgo._internal.net.http.cgi;
@:keep @:allow(stdgo._internal.net.http.cgi.Cgi.Handler_asInterface) class Handler_static_extension {
    @:keep
    static public function _handleInternalRedirect( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _path:stdgo.GoString):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler> = _h;
        var __tmp__ = _req.url.parse(_path?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _rw.writeHeader((500 : stdgo.GoInt));
            _h._printf(("cgi: error resolving local URI path %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        var _newReq = (stdgo.Go.setRef(({ method : ("GET" : stdgo.GoString), url : _url, proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), host : _url.host?.__copy__(), remoteAddr : _req.remoteAddr?.__copy__(), tls : _req.tls } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        _h.pathLocationHandler.serveHTTP(_rw, _newReq);
    }
    @:keep
    static public function _printf( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler> = _h;
        if ((_h.logger != null && ((_h.logger : Dynamic).__nil__ == null || !(_h.logger : Dynamic).__nil__))) {
            _h.logger.printf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    static public function serveHTTP( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler> = _h;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root = (_h.root?.__copy__() : stdgo.GoString);
            if (_root == (stdgo.Go.str())) {
                _root = ("/" : stdgo.GoString);
            };
            if ((((_req.transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && (_req.transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool)) {
                _rw.writeHeader((400 : stdgo.GoInt));
                _rw.write((("Chunked request bodies are not supported by CGI." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                return;
            };
            var _pathInfo = (_req.url.path?.__copy__() : stdgo.GoString);
            if (((_root != ("/" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_pathInfo?.__copy__(), _root?.__copy__()) : Bool)) {
                _pathInfo = (_pathInfo.__slice__((_root.length)) : stdgo.GoString)?.__copy__();
            };
            var _port = ("80" : stdgo.GoString);
            {
                var _matches = stdgo._internal.net.http.cgi.Cgi__trailingPort._trailingPort.findStringSubmatch(_req.host?.__copy__());
                if ((_matches.length) != ((0 : stdgo.GoInt))) {
                    _port = _matches[(1 : stdgo.GoInt)]?.__copy__();
                };
            };
            var _env = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("SERVER_SOFTWARE=go" : stdgo.GoString),
("SERVER_PROTOCOL=HTTP/1.1" : stdgo.GoString),
(("HTTP_HOST=" : stdgo.GoString) + _req.host?.__copy__() : stdgo.GoString)?.__copy__(),
("GATEWAY_INTERFACE=CGI/1.1" : stdgo.GoString),
(("REQUEST_METHOD=" : stdgo.GoString) + _req.method?.__copy__() : stdgo.GoString)?.__copy__(),
(("QUERY_STRING=" : stdgo.GoString) + _req.url.rawQuery?.__copy__() : stdgo.GoString)?.__copy__(),
(("REQUEST_URI=" : stdgo.GoString) + _req.url.requestURI()?.__copy__() : stdgo.GoString)?.__copy__(),
(("PATH_INFO=" : stdgo.GoString) + _pathInfo?.__copy__() : stdgo.GoString)?.__copy__(),
(("SCRIPT_NAME=" : stdgo.GoString) + _root?.__copy__() : stdgo.GoString)?.__copy__(),
(("SCRIPT_FILENAME=" : stdgo.GoString) + _h.path?.__copy__() : stdgo.GoString)?.__copy__(),
(("SERVER_PORT=" : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            {
                var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_req.remoteAddr?.__copy__()), _remoteIP:stdgo.GoString = __tmp__._0, _remotePort:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = (_env.__append__((("REMOTE_ADDR=" : stdgo.GoString) + _remoteIP?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_HOST=" : stdgo.GoString) + _remoteIP?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_PORT=" : stdgo.GoString) + _remotePort?.__copy__() : stdgo.GoString)?.__copy__()));
                } else {
                    _env = (_env.__append__((("REMOTE_ADDR=" : stdgo.GoString) + _req.remoteAddr?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_HOST=" : stdgo.GoString) + _req.remoteAddr?.__copy__() : stdgo.GoString)?.__copy__()));
                };
            };
            {
                var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_req.host?.__copy__()), _hostDomain:stdgo.GoString = __tmp__._0, __16:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = (_env.__append__((("SERVER_NAME=" : stdgo.GoString) + _hostDomain?.__copy__() : stdgo.GoString)?.__copy__()));
                } else {
                    _env = (_env.__append__((("SERVER_NAME=" : stdgo.GoString) + _req.host?.__copy__() : stdgo.GoString)?.__copy__()));
                };
            };
            if ((_req.tls != null && ((_req.tls : Dynamic).__nil__ == null || !(_req.tls : Dynamic).__nil__))) {
                _env = (_env.__append__(("HTTPS=on" : stdgo.GoString)));
            };
            for (_k => _v in _req.header) {
                _k = stdgo._internal.strings.Strings_map_.map_(stdgo._internal.net.http.cgi.Cgi__upperCaseAndUnderscore._upperCaseAndUnderscore, _k?.__copy__())?.__copy__();
                if (_k == (("PROXY" : stdgo.GoString))) {
                    continue;
                };
                var _joinStr = (", " : stdgo.GoString);
                if (_k == (("COOKIE" : stdgo.GoString))) {
                    _joinStr = ("; " : stdgo.GoString);
                };
                _env = (_env.__append__((((("HTTP_" : stdgo.GoString) + _k?.__copy__() : stdgo.GoString) + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_v, _joinStr?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()));
            };
            if ((_req.contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
                _env = (_env.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("CONTENT_LENGTH=%d" : stdgo.GoString), stdgo.Go.toInterface(_req.contentLength))?.__copy__()));
            };
            {
                var _ctype = (_req.header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_ctype != (stdgo.Go.str())) {
                    _env = (_env.__append__((("CONTENT_TYPE=" : stdgo.GoString) + _ctype?.__copy__() : stdgo.GoString)?.__copy__()));
                };
            };
            var _envPath = (stdgo._internal.os.Os_getenv.getenv(("PATH" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_envPath == (stdgo.Go.str())) {
                _envPath = ("/bin:/usr/bin:/usr/ucb:/usr/bsd:/usr/local/bin" : stdgo.GoString);
            };
            _env = (_env.__append__((("PATH=" : stdgo.GoString) + _envPath?.__copy__() : stdgo.GoString)?.__copy__()));
            for (__25 => _e in _h.inheritEnv) {
                {
                    var _v = (stdgo._internal.os.Os_getenv.getenv(_e?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_v != (stdgo.Go.str())) {
                        _env = (_env.__append__(((_e + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                };
            };
            for (__26 => _e in stdgo._internal.net.http.cgi.Cgi__osDefaultInheritEnv._osDefaultInheritEnv) {
                {
                    var _v = (stdgo._internal.os.Os_getenv.getenv(_e?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_v != (stdgo.Go.str())) {
                        _env = (_env.__append__(((_e + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                };
            };
            if (_h.env != null) {
                _env = (_env.__append__(...(_h.env : Array<stdgo.GoString>)));
            };
            _env = stdgo._internal.net.http.cgi.Cgi__removeLeadingDuplicates._removeLeadingDuplicates(_env);
            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _path = __1, _cwd = __0;
            if (_h.dir != (stdgo.Go.str())) {
                _path = _h.path?.__copy__();
                _cwd = _h.dir?.__copy__();
            } else {
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_h.path?.__copy__());
                    _cwd = __tmp__._0?.__copy__();
                    _path = __tmp__._1?.__copy__();
                };
            };
            if (_cwd == (stdgo.Go.str())) {
                _cwd = ("." : stdgo.GoString);
            };
            var _internalError = (function(_err:stdgo.Error):Void {
                _rw.writeHeader((500 : stdgo.GoInt));
                _h._printf(("CGI error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } : stdgo.Error -> Void);
            var _cmd = (stdgo.Go.setRef(({ path : _path?.__copy__(), args : ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_h.path?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_h.args : Array<stdgo.GoString>))), dir : _cwd?.__copy__(), env : _env, stderr : _h._stderr() } : stdgo._internal.os.exec.Exec_Cmd.Cmd)) : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
            if (_req.contentLength != ((0i64 : stdgo.GoInt64))) {
                _cmd.stdin = _req.body;
            };
            var __tmp__ = _cmd.stdoutPipe(), _stdoutRead:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _internalError(_err);
                return;
            };
            _err = _cmd.start();
            if (_err != null) {
                _internalError(_err);
                return;
            };
            {
                var _hook = stdgo._internal.net.http.cgi.Cgi__testHookStartProcess._testHookStartProcess;
                if (_hook != null) {
                    _hook(_cmd.process);
                };
            };
            __deferstack__.unshift(() -> _cmd.wait_());
            __deferstack__.unshift(() -> _stdoutRead.close());
            var _linebody = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_stdoutRead, (1024 : stdgo.GoInt));
            var _headers = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            var _statusCode = (0 : stdgo.GoInt);
            var _headerLines = (0 : stdgo.GoInt);
            var _sawBlankLine = (false : Bool);
            while (true) {
                var __tmp__ = _linebody.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_isPrefix) {
                    _rw.writeHeader((500 : stdgo.GoInt));
                    _h._printf(("cgi: long header line from subprocess." : stdgo.GoString));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    break;
                };
                if (_err != null) {
                    _rw.writeHeader((500 : stdgo.GoInt));
                    _h._printf(("cgi: error reading headers: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                if ((_line.length) == ((0 : stdgo.GoInt))) {
                    _sawBlankLine = true;
                    break;
                };
                _headerLines++;
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_line : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString)), _header:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (!_ok) {
                    _h._printf(("cgi: bogus header line: %s" : stdgo.GoString), stdgo.Go.toInterface((_line : stdgo.GoString)));
                    continue;
                };
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_header?.__copy__())) {
                    _h._printf(("cgi: invalid header name: %q" : stdgo.GoString), stdgo.Go.toInterface(_header));
                    continue;
                };
                _val = stdgo._internal.net.textproto.Textproto_trimString.trimString(_val?.__copy__())?.__copy__();
                if (_header == (("Status" : stdgo.GoString))) {
                    if (((_val.length) < (3 : stdgo.GoInt) : Bool)) {
                        _h._printf(("cgi: bogus status (short): %q" : stdgo.GoString), stdgo.Go.toInterface(_val));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_val.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _code:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _h._printf(("cgi: bogus status: %q" : stdgo.GoString), stdgo.Go.toInterface(_val));
                        _h._printf(("cgi: line was %q" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                    _statusCode = _code;
                } else {
                    _headers.add(_header?.__copy__(), _val?.__copy__());
                };
            };
            if (((_headerLines == (0 : stdgo.GoInt)) || !_sawBlankLine : Bool)) {
                _rw.writeHeader((500 : stdgo.GoInt));
                _h._printf(("cgi: no headers" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _loc = (_headers.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_loc != (stdgo.Go.str())) {
                    if ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_loc?.__copy__(), ("/" : stdgo.GoString)) && (_h.pathLocationHandler != null) : Bool)) {
                        _h._handleInternalRedirect(_rw, _req, _loc?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                    if (_statusCode == ((0 : stdgo.GoInt))) {
                        _statusCode = (302 : stdgo.GoInt);
                    };
                };
            };
            if (((_statusCode == (0 : stdgo.GoInt)) && (_headers.get(("Content-Type" : stdgo.GoString)) == stdgo.Go.str()) : Bool)) {
                _rw.writeHeader((500 : stdgo.GoInt));
                _h._printf(("cgi: missing required Content-Type in headers" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_statusCode == ((0 : stdgo.GoInt))) {
                _statusCode = (200 : stdgo.GoInt);
            };
            for (_k => _vv in _headers) {
                for (__85 => _v in _vv) {
                    _rw.header().add(_k?.__copy__(), _v?.__copy__());
                };
            };
            _rw.writeHeader(_statusCode);
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(_rw, stdgo.Go.asInterface(_linebody));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _h._printf(("cgi: copy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                _cmd.process.kill();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
    @:keep
    static public function _stderr( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>):stdgo._internal.io.Io_Writer.Writer {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler> = _h;
        if (_h.stderr != null) {
            return _h.stderr;
        };
        return stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr);
    }
}
