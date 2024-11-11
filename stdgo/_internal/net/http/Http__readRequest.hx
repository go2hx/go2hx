package stdgo._internal.net.http;
function _readRequest(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _req = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _err = (null : stdgo.Error);
        try {
            var _tp = stdgo._internal.net.http.Http__newTextprotoReader._newTextprotoReader(_b);
            {
                var _a0 = _tp;
                __deferstack__.unshift(() -> stdgo._internal.net.http.Http__putTextprotoReader._putTextprotoReader(_a0));
            };
            _req = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            {
                {
                    var __tmp__ = _tp.readLine();
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                };
                a();
            });
            var _ok:Bool = false;
            {
                var __tmp__ = stdgo._internal.net.http.Http__parseRequestLine._parseRequestLine(_s?.__copy__());
                _req.method = __tmp__._0?.__copy__();
                _req.requestURI = __tmp__._1?.__copy__();
                _req.proto = __tmp__._2?.__copy__();
                _ok = __tmp__._3;
            };
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP request" : stdgo.GoString), _s?.__copy__()) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (!stdgo._internal.net.http.Http__validMethod._validMethod(_req.method?.__copy__())) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("invalid method" : stdgo.GoString), _req.method?.__copy__()) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _rawurl = (_req.requestURI?.__copy__() : stdgo.GoString);
            {
                {
                    var __tmp__ = stdgo._internal.net.http.Http_parseHTTPVersion.parseHTTPVersion(_req.proto?.__copy__());
                    _req.protoMajor = __tmp__._0;
                    _req.protoMinor = __tmp__._1;
                    _ok = __tmp__._2;
                };
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP version" : stdgo.GoString), _req.proto?.__copy__()) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var _justAuthority = ((_req.method == ("CONNECT" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_rawurl?.__copy__(), ("/" : stdgo.GoString)) : Bool);
            if (_justAuthority) {
                _rawurl = (("http://" : stdgo.GoString) + _rawurl?.__copy__() : stdgo.GoString)?.__copy__();
            };
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url_parseRequestURI.parseRequestURI(_rawurl?.__copy__());
                    _req.url = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_justAuthority) {
                _req.url.scheme = stdgo.Go.str()?.__copy__();
            };
            var __tmp__ = _tp.readMIMEHeader(), _mimeHeader:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _req.header = (_mimeHeader : stdgo._internal.net.http.Http_Header.Header);
            if ((((_req.header[("Host" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)).length) > (1 : stdgo.GoInt) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many Host headers" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _req.host = _req.url.host?.__copy__();
            if (_req.host == (stdgo.Go.str())) {
                _req.host = _req.header._get(("Host" : stdgo.GoString))?.__copy__();
            };
            stdgo._internal.net.http.Http__fixPragmaCacheControl._fixPragmaCacheControl(_req.header);
            _req.close = stdgo._internal.net.http.Http__shouldClose._shouldClose(_req.protoMajor, _req.protoMinor, _req.header, false);
            _err = stdgo._internal.net.http.Http__readTransfer._readTransfer(stdgo.Go.toInterface(stdgo.Go.asInterface(_req)), _b);
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_req._isH2Upgrade()) {
                _req.contentLength = (-1i64 : stdgo.GoInt64);
                _req.close = true;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
