package stdgo._internal.net.http.cgi;
@:keep @:allow(stdgo._internal.net.http.cgi.Cgi.Handler_asInterface) class Handler_static_extension {
    @:keep
    @:tdfield
    static public function _handleInternalRedirect( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _path:stdgo.GoString):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler> = _h;
        var __tmp__ = @:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.parse(_path?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _rw.writeHeader((500 : stdgo.GoInt));
            @:check2r _h._printf(("cgi: error resolving local URI path %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        var _newReq = (stdgo.Go.setRef(({ method : ("GET" : stdgo.GoString), uRL : _url, proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), host : (@:checkr _url ?? throw "null pointer dereference").host?.__copy__(), remoteAddr : (@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__(), tLS : (@:checkr _req ?? throw "null pointer dereference").tLS } : stdgo._internal.net.http.Http_request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        (@:checkr _h ?? throw "null pointer dereference").pathLocationHandler.serveHTTP(_rw, _newReq);
    }
    @:keep
    @:tdfield
    static public function _printf( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler> = _h;
        if (((@:checkr _h ?? throw "null pointer dereference").logger != null && (((@:checkr _h ?? throw "null pointer dereference").logger : Dynamic).__nil__ == null || !((@:checkr _h ?? throw "null pointer dereference").logger : Dynamic).__nil__))) {
            @:check2r (@:checkr _h ?? throw "null pointer dereference").logger.printf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function serveHTTP( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _root = ((@:checkr _h ?? throw "null pointer dereference").root?.__copy__() : stdgo.GoString);
            if (_root == ((stdgo.Go.str() : stdgo.GoString))) {
                _root = ("/" : stdgo.GoString);
            };
            if (((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool)) {
                _rw.writeHeader((400 : stdgo.GoInt));
                _rw.write(((("Chunked request bodies are not supported by CGI." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                return;
            };
            var _pathInfo = ((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString);
            if (((_root != ("/" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_pathInfo?.__copy__(), _root?.__copy__()) : Bool)) {
                _pathInfo = (_pathInfo.__slice__((_root.length)) : stdgo.GoString)?.__copy__();
            };
            var _port = (("80" : stdgo.GoString) : stdgo.GoString);
            {
                var _matches = @:check2r stdgo._internal.net.http.cgi.Cgi__trailingport._trailingPort.findStringSubmatch((@:checkr _req ?? throw "null pointer dereference").host?.__copy__());
                if ((_matches.length) != ((0 : stdgo.GoInt))) {
                    _port = _matches[(1 : stdgo.GoInt)]?.__copy__();
                };
            };
            var _env = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("SERVER_SOFTWARE=go" : stdgo.GoString),
("SERVER_PROTOCOL=HTTP/1.1" : stdgo.GoString),
(("HTTP_HOST=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString)?.__copy__(),
("GATEWAY_INTERFACE=CGI/1.1" : stdgo.GoString),
(("REQUEST_METHOD=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").method?.__copy__() : stdgo.GoString)?.__copy__(),
(("QUERY_STRING=" : stdgo.GoString) + (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString)?.__copy__(),
(("REQUEST_URI=" : stdgo.GoString) + @:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.requestURI()?.__copy__() : stdgo.GoString)?.__copy__(),
(("PATH_INFO=" : stdgo.GoString) + _pathInfo?.__copy__() : stdgo.GoString)?.__copy__(),
(("SCRIPT_NAME=" : stdgo.GoString) + _root?.__copy__() : stdgo.GoString)?.__copy__(),
(("SCRIPT_FILENAME=" : stdgo.GoString) + (@:checkr _h ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString)?.__copy__(),
(("SERVER_PORT=" : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__()), _remoteIP:stdgo.GoString = __tmp__._0, _remotePort:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = (_env.__append__((("REMOTE_ADDR=" : stdgo.GoString) + _remoteIP?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_HOST=" : stdgo.GoString) + _remoteIP?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_PORT=" : stdgo.GoString) + _remotePort?.__copy__() : stdgo.GoString)?.__copy__()));
                } else {
                    _env = (_env.__append__((("REMOTE_ADDR=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_HOST=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__() : stdgo.GoString)?.__copy__()));
                };
            };
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _req ?? throw "null pointer dereference").host?.__copy__()), _hostDomain:stdgo.GoString = __tmp__._0, __16:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = (_env.__append__((("SERVER_NAME=" : stdgo.GoString) + _hostDomain?.__copy__() : stdgo.GoString)?.__copy__()));
                } else {
                    _env = (_env.__append__((("SERVER_NAME=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString)?.__copy__()));
                };
            };
            if (((@:checkr _req ?? throw "null pointer dereference").tLS != null && (((@:checkr _req ?? throw "null pointer dereference").tLS : Dynamic).__nil__ == null || !((@:checkr _req ?? throw "null pointer dereference").tLS : Dynamic).__nil__))) {
                _env = (_env.__append__((("HTTPS=on" : stdgo.GoString) : stdgo.GoString)));
            };
            for (_k => _v in (@:checkr _req ?? throw "null pointer dereference").header) {
                _k = stdgo._internal.strings.Strings_map_.map_(stdgo._internal.net.http.cgi.Cgi__uppercaseandunderscore._upperCaseAndUnderscore, _k?.__copy__())?.__copy__();
                if (_k == (("PROXY" : stdgo.GoString))) {
                    continue;
                };
                var _joinStr = ((", " : stdgo.GoString) : stdgo.GoString);
                if (_k == (("COOKIE" : stdgo.GoString))) {
                    _joinStr = ("; " : stdgo.GoString);
                };
                _env = (_env.__append__((((("HTTP_" : stdgo.GoString) + _k?.__copy__() : stdgo.GoString) + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_v, _joinStr?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()));
            };
            if (((@:checkr _req ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
                _env = (_env.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("CONTENT_LENGTH=%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").contentLength))?.__copy__()));
            };
            {
                var _ctype = ((@:checkr _req ?? throw "null pointer dereference").header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_ctype != ((stdgo.Go.str() : stdgo.GoString))) {
                    _env = (_env.__append__((("CONTENT_TYPE=" : stdgo.GoString) + _ctype?.__copy__() : stdgo.GoString)?.__copy__()));
                };
            };
            var _envPath = (stdgo._internal.os.Os_getenv.getenv(("PATH" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_envPath == ((stdgo.Go.str() : stdgo.GoString))) {
                _envPath = ("/bin:/usr/bin:/usr/ucb:/usr/bsd:/usr/local/bin" : stdgo.GoString);
            };
            _env = (_env.__append__((("PATH=" : stdgo.GoString) + _envPath?.__copy__() : stdgo.GoString)?.__copy__()));
            for (__25 => _e in (@:checkr _h ?? throw "null pointer dereference").inheritEnv) {
                {
                    var _v = (stdgo._internal.os.Os_getenv.getenv(_e?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                        _env = (_env.__append__(((_e + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                };
            };
            for (__26 => _e in stdgo._internal.net.http.cgi.Cgi__osdefaultinheritenv._osDefaultInheritEnv) {
                {
                    var _v = (stdgo._internal.os.Os_getenv.getenv(_e?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                        _env = (_env.__append__(((_e + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                };
            };
            if ((@:checkr _h ?? throw "null pointer dereference").env != null) {
                _env = (_env.__append__(...((@:checkr _h ?? throw "null pointer dereference").env : Array<stdgo.GoString>)));
            };
            _env = stdgo._internal.net.http.cgi.Cgi__removeleadingduplicates._removeLeadingDuplicates(_env);
            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _path = __1, _cwd = __0;
            if ((@:checkr _h ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
                _path = (@:checkr _h ?? throw "null pointer dereference").path?.__copy__();
                _cwd = (@:checkr _h ?? throw "null pointer dereference").dir?.__copy__();
            } else {
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split((@:checkr _h ?? throw "null pointer dereference").path?.__copy__());
                    _cwd = @:tmpset0 __tmp__._0?.__copy__();
                    _path = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
            if (_cwd == ((stdgo.Go.str() : stdgo.GoString))) {
                _cwd = ("." : stdgo.GoString);
            };
            var _internalError = (function(_err:stdgo.Error):Void {
                _rw.writeHeader((500 : stdgo.GoInt));
                @:check2r _h._printf(("CGI error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } : stdgo.Error -> Void);
            var _cmd = (stdgo.Go.setRef(({ path : _path?.__copy__(), args : ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[(@:checkr _h ?? throw "null pointer dereference").path?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _h ?? throw "null pointer dereference").args : Array<stdgo.GoString>))), dir : _cwd?.__copy__(), env : _env, stderr : @:check2r _h._stderr() } : stdgo._internal.os.exec.Exec_cmd.Cmd)) : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
            if ((@:checkr _req ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64))) {
                (@:checkr _cmd ?? throw "null pointer dereference").stdin = (@:checkr _req ?? throw "null pointer dereference").body;
            };
            var __tmp__ = @:check2r _cmd.stdoutPipe(), _stdoutRead:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _internalError(_err);
                return;
            };
            _err = @:check2r _cmd.start();
            if (_err != null) {
                _internalError(_err);
                return;
            };
            {
                var _hook = stdgo._internal.net.http.cgi.Cgi__testhookstartprocess._testHookStartProcess;
                if (_hook != null) {
                    _hook((@:checkr _cmd ?? throw "null pointer dereference").process);
                };
            };
            {
                final __f__ = @:check2r _cmd.wait_;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = _stdoutRead.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _linebody = stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(_stdoutRead, (1024 : stdgo.GoInt));
            var _headers = ((({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header) : stdgo._internal.net.http.Http_header.Header);
            var _statusCode = (0 : stdgo.GoInt);
            var _headerLines = (0 : stdgo.GoInt);
            var _sawBlankLine = (false : Bool);
            while (true) {
                var __tmp__ = @:check2r _linebody.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_isPrefix) {
                    _rw.writeHeader((500 : stdgo.GoInt));
                    @:check2r _h._printf(("cgi: long header line from subprocess." : stdgo.GoString));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    break;
                };
                if (_err != null) {
                    _rw.writeHeader((500 : stdgo.GoInt));
                    @:check2r _h._printf(("cgi: error reading headers: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
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
                    @:check2r _h._printf(("cgi: bogus header line: %s" : stdgo.GoString), stdgo.Go.toInterface((_line : stdgo.GoString)));
                    continue;
                };
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_header?.__copy__())) {
                    @:check2r _h._printf(("cgi: invalid header name: %q" : stdgo.GoString), stdgo.Go.toInterface(_header));
                    continue;
                };
                _val = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_val?.__copy__())?.__copy__();
                if (_header == (("Status" : stdgo.GoString))) {
                    if (((_val.length) < (3 : stdgo.GoInt) : Bool)) {
                        @:check2r _h._printf(("cgi: bogus status (short): %q" : stdgo.GoString), stdgo.Go.toInterface(_val));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_val.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _code:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _h._printf(("cgi: bogus status: %q" : stdgo.GoString), stdgo.Go.toInterface(_val));
                        @:check2r _h._printf(("cgi: line was %q" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
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
                @:check2r _h._printf(("cgi: no headers" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            {
                var _loc = (_headers.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_loc != ((stdgo.Go.str() : stdgo.GoString))) {
                    if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_loc?.__copy__(), ("/" : stdgo.GoString)) && ((@:checkr _h ?? throw "null pointer dereference").pathLocationHandler != null) : Bool)) {
                        @:check2r _h._handleInternalRedirect(_rw, _req, _loc?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    if (_statusCode == ((0 : stdgo.GoInt))) {
                        _statusCode = (302 : stdgo.GoInt);
                    };
                };
            };
            if (((_statusCode == (0 : stdgo.GoInt)) && (_headers.get(("Content-Type" : stdgo.GoString)) == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                _rw.writeHeader((500 : stdgo.GoInt));
                @:check2r _h._printf(("cgi: missing required Content-Type in headers" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
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
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _h._printf(("cgi: copy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                @:check2r (@:checkr _cmd ?? throw "null pointer dereference").process.kill();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _stderr( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>):stdgo._internal.io.Io_writer.Writer {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler> = _h;
        if ((@:checkr _h ?? throw "null pointer dereference").stderr != null) {
            return (@:checkr _h ?? throw "null pointer dereference").stderr;
        };
        return stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr);
    }
}
