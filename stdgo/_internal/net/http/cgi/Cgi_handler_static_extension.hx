package stdgo._internal.net.http.cgi;
@:keep @:allow(stdgo._internal.net.http.cgi.Cgi.Handler_asInterface) class Handler_static_extension {
    @:keep
    @:tdfield
    static public function _handleInternalRedirect( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _path:stdgo.GoString):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler> = _h;
        var __tmp__ = (@:checkr _req ?? throw "null pointer dereference").uRL.parse(_path?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L369"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L370"
            _rw.writeHeader((500 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L371"
            _h._printf(("cgi: error resolving local URI path %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L372"
            return;
        };
        var _newReq = (stdgo.Go.setRef(({ method : ("GET" : stdgo.GoString), uRL : _url, proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), host : (@:checkr _url ?? throw "null pointer dereference").host?.__copy__(), remoteAddr : (@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__(), tLS : (@:checkr _req ?? throw "null pointer dereference").tLS } : stdgo._internal.net.http.Http_request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L394"
        (@:checkr _h ?? throw "null pointer dereference").pathLocationHandler.serveHTTP(_rw, _newReq);
    }
    @:keep
    @:tdfield
    static public function _printf( _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_handler.Handler> = _h;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L360"
        if (({
            final value = (@:checkr _h ?? throw "null pointer dereference").logger;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L361"
            (@:checkr _h ?? throw "null pointer dereference").logger.printf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L363"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L119"
            if (_root == ((stdgo.Go.str() : stdgo.GoString))) {
                _root = ("/" : stdgo.GoString);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L123"
            if (((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L124"
                _rw.writeHeader((400 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L125"
                _rw.write(((("Chunked request bodies are not supported by CGI." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L126"
                return;
            };
            var _pathInfo = ((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L130"
            if (((_root != ("/" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_pathInfo?.__copy__(), _root?.__copy__()) : Bool)) {
                _pathInfo = (_pathInfo.__slice__((_root.length)) : stdgo.GoString)?.__copy__();
            };
            var _port = (("80" : stdgo.GoString) : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L135"
            {
                var _matches = stdgo._internal.net.http.cgi.Cgi__trailingport._trailingPort.findStringSubmatch((@:checkr _req ?? throw "null pointer dereference").host?.__copy__());
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
(("REQUEST_URI=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").uRL.requestURI()?.__copy__() : stdgo.GoString)?.__copy__(),
(("PATH_INFO=" : stdgo.GoString) + _pathInfo?.__copy__() : stdgo.GoString)?.__copy__(),
(("SCRIPT_NAME=" : stdgo.GoString) + _root?.__copy__() : stdgo.GoString)?.__copy__(),
(("SCRIPT_FILENAME=" : stdgo.GoString) + (@:checkr _h ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString)?.__copy__(),
(("SERVER_PORT=" : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L153"
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__()), _remoteIP:stdgo.GoString = __tmp__._0, _remotePort:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = (_env.__append__((("REMOTE_ADDR=" : stdgo.GoString) + _remoteIP?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_HOST=" : stdgo.GoString) + _remoteIP?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_PORT=" : stdgo.GoString) + _remotePort?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                } else {
                    _env = (_env.__append__((("REMOTE_ADDR=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__() : stdgo.GoString)?.__copy__(), (("REMOTE_HOST=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L160"
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _req ?? throw "null pointer dereference").host?.__copy__()), _hostDomain:stdgo.GoString = __tmp__._0, __16:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = (_env.__append__((("SERVER_NAME=" : stdgo.GoString) + _hostDomain?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                } else {
                    _env = (_env.__append__((("SERVER_NAME=" : stdgo.GoString) + (@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L166"
            if (({
                final value = (@:checkr _req ?? throw "null pointer dereference").tLS;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _env = (_env.__append__(("HTTPS=on" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L170"
            for (_k => _v in (@:checkr _req ?? throw "null pointer dereference").header) {
                _k = stdgo._internal.strings.Strings_map_.map_(stdgo._internal.net.http.cgi.Cgi__uppercaseandunderscore._upperCaseAndUnderscore, _k?.__copy__())?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L172"
                if (_k == (("PROXY" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L174"
                    continue;
                };
                var _joinStr = ((", " : stdgo.GoString) : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L177"
                if (_k == (("COOKIE" : stdgo.GoString))) {
                    _joinStr = ("; " : stdgo.GoString);
                };
                _env = (_env.__append__((((("HTTP_" : stdgo.GoString) + _k?.__copy__() : stdgo.GoString) + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_v, _joinStr?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L183"
            if (((@:checkr _req ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
                _env = (_env.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("CONTENT_LENGTH=%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").contentLength))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L186"
            {
                var _ctype = ((@:checkr _req ?? throw "null pointer dereference").header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_ctype != ((stdgo.Go.str() : stdgo.GoString))) {
                    _env = (_env.__append__((("CONTENT_TYPE=" : stdgo.GoString) + _ctype?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
            var _envPath = (stdgo._internal.os.Os_getenv.getenv(("PATH" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L191"
            if (_envPath == ((stdgo.Go.str() : stdgo.GoString))) {
                _envPath = ("/bin:/usr/bin:/usr/ucb:/usr/bsd:/usr/local/bin" : stdgo.GoString);
            };
            _env = (_env.__append__((("PATH=" : stdgo.GoString) + _envPath?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L196"
            for (__25 => _e in (@:checkr _h ?? throw "null pointer dereference").inheritEnv) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L197"
                {
                    var _v = (stdgo._internal.os.Os_getenv.getenv(_e?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                        _env = (_env.__append__(((_e + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L202"
            for (__26 => _e in stdgo._internal.net.http.cgi.Cgi__osdefaultinheritenv._osDefaultInheritEnv) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L203"
                {
                    var _v = (stdgo._internal.os.Os_getenv.getenv(_e?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                        _env = (_env.__append__(((_e + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L208"
            if ((@:checkr _h ?? throw "null pointer dereference").env != null) {
                _env = (_env.__append__(...((@:checkr _h ?? throw "null pointer dereference").env : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
            };
            _env = stdgo._internal.net.http.cgi.Cgi__removeleadingduplicates._removeLeadingDuplicates(_env);
            var _cwd:stdgo.GoString = ("" : stdgo.GoString), _path:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L215"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L221"
            if (_cwd == ((stdgo.Go.str() : stdgo.GoString))) {
                _cwd = ("." : stdgo.GoString);
            };
            var _internalError = (function(_err:stdgo.Error):Void {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L226"
                _rw.writeHeader((500 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L227"
                _h._printf(("CGI error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } : stdgo.Error -> Void);
            var _cmd = (stdgo.Go.setRef(({ path : _path?.__copy__(), args : ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[(@:checkr _h ?? throw "null pointer dereference").path?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _h ?? throw "null pointer dereference").args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>), dir : _cwd?.__copy__(), env : _env, stderr : _h._stderr() } : stdgo._internal.os.exec.Exec_cmd.Cmd)) : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L237"
            if ((@:checkr _req ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64))) {
                (@:checkr _cmd ?? throw "null pointer dereference").stdin = (@:checkr _req ?? throw "null pointer dereference").body;
            };
            var __tmp__ = _cmd.stdoutPipe(), _stdoutRead:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L241"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L242"
                _internalError(_err);
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L243"
                return;
            };
            _err = _cmd.start();
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L247"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L248"
                _internalError(_err);
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L249"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L251"
            {
                var _hook = stdgo._internal.net.http.cgi.Cgi__testhookstartprocess._testHookStartProcess;
                if (_hook != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L252"
                    _hook((@:checkr _cmd ?? throw "null pointer dereference").process);
                };
            };
            {
                final __f__ = _cmd.wait_;
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L262"
            while (true) {
                var __tmp__ = _linebody.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L264"
                if (_isPrefix) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L265"
                    _rw.writeHeader((500 : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L266"
                    _h._printf(("cgi: long header line from subprocess." : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L267"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L269"
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L270"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L272"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L273"
                    _rw.writeHeader((500 : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L274"
                    _h._printf(("cgi: error reading headers: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L275"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L277"
                if ((_line.length) == ((0 : stdgo.GoInt))) {
                    _sawBlankLine = true;
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L279"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L281"
                _headerLines++;
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_line : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString)), _header:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L283"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L284"
                    _h._printf(("cgi: bogus header line: %s" : stdgo.GoString), stdgo.Go.toInterface((_line : stdgo.GoString)));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L285"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L287"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_header?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L288"
                    _h._printf(("cgi: invalid header name: %q" : stdgo.GoString), stdgo.Go.toInterface(_header));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L289"
                    continue;
                };
                _val = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_val?.__copy__())?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L292"
                if (_header == (("Status" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L294"
                    if (((_val.length) < (3 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L295"
                        _h._printf(("cgi: bogus status (short): %q" : stdgo.GoString), stdgo.Go.toInterface(_val));
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L296"
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
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L299"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L300"
                        _h._printf(("cgi: bogus status: %q" : stdgo.GoString), stdgo.Go.toInterface(_val));
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L301"
                        _h._printf(("cgi: line was %q" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L302"
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
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L306"
                    _headers.add(_header?.__copy__(), _val?.__copy__());
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L309"
            if (((_headerLines == (0 : stdgo.GoInt)) || !_sawBlankLine : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L310"
                _rw.writeHeader((500 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L311"
                _h._printf(("cgi: no headers" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L312"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L315"
            {
                var _loc = (_headers.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_loc != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L316"
                    if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_loc?.__copy__(), ("/" : stdgo.GoString)) && ((@:checkr _h ?? throw "null pointer dereference").pathLocationHandler != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L317"
                        _h._handleInternalRedirect(_rw, _req, _loc?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L318"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L320"
                    if (_statusCode == ((0 : stdgo.GoInt))) {
                        _statusCode = (302 : stdgo.GoInt);
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L325"
            if (((_statusCode == (0 : stdgo.GoInt)) && (_headers.get(("Content-Type" : stdgo.GoString)) == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L326"
                _rw.writeHeader((500 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L327"
                _h._printf(("cgi: missing required Content-Type in headers" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L328"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L331"
            if (_statusCode == ((0 : stdgo.GoInt))) {
                _statusCode = (200 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L338"
            for (_k => _vv in _headers) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L339"
                for (__85 => _v in _vv) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L340"
                    _rw.header().add(_k?.__copy__(), _v?.__copy__());
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L344"
            _rw.writeHeader(_statusCode);
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(_rw, stdgo.Go.asInterface(_linebody));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L347"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L348"
                _h._printf(("cgi: copy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L355"
                (@:checkr _cmd ?? throw "null pointer dereference").process.kill();
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L85"
        if ((@:checkr _h ?? throw "null pointer dereference").stderr != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L86"
            return (@:checkr _h ?? throw "null pointer dereference").stderr;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L88"
        return stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr);
    }
}
