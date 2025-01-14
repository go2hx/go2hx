package stdgo._internal.net.http;
function _readRequest(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _req = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _err = (null : stdgo.Error);
        try {
            var _tp = stdgo._internal.net.http.Http__newTextprotoReader._newTextprotoReader(_b);
            {
                var _a0 = _tp;
                final __f__ = stdgo._internal.net.http.Http__putTextprotoReader._putTextprotoReader;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            _req = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            {
                {
                    var __tmp__ = @:check2r _tp.readLine();
                    _s = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
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
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                        };
                    };
                    a();
                }) });
            };
            var _ok:Bool = false;
            {
                var __tmp__ = stdgo._internal.net.http.Http__parseRequestLine._parseRequestLine(_s?.__copy__());
                (@:checkr _req ?? throw "null pointer dereference").method = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _req ?? throw "null pointer dereference").requestURI = @:tmpset0 __tmp__._1?.__copy__();
                (@:checkr _req ?? throw "null pointer dereference").proto = @:tmpset0 __tmp__._2?.__copy__();
                _ok = @:tmpset0 __tmp__._3;
            };
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP request" : stdgo.GoString), _s?.__copy__()) };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (!stdgo._internal.net.http.Http__validMethod._validMethod((@:checkr _req ?? throw "null pointer dereference").method?.__copy__())) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("invalid method" : stdgo.GoString), (@:checkr _req ?? throw "null pointer dereference").method?.__copy__()) };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _rawurl = ((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__() : stdgo.GoString);
            {
                {
                    var __tmp__ = stdgo._internal.net.http.Http_parseHTTPVersion.parseHTTPVersion((@:checkr _req ?? throw "null pointer dereference").proto?.__copy__());
                    (@:checkr _req ?? throw "null pointer dereference").protoMajor = @:tmpset0 __tmp__._0;
                    (@:checkr _req ?? throw "null pointer dereference").protoMinor = @:tmpset0 __tmp__._1;
                    _ok = @:tmpset0 __tmp__._2;
                };
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP version" : stdgo.GoString), (@:checkr _req ?? throw "null pointer dereference").proto?.__copy__()) };
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var _justAuthority = (((@:checkr _req ?? throw "null pointer dereference").method == ("CONNECT" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_rawurl?.__copy__(), ("/" : stdgo.GoString)) : Bool);
            if (_justAuthority) {
                _rawurl = (("http://" : stdgo.GoString) + _rawurl?.__copy__() : stdgo.GoString)?.__copy__();
            };
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url_parseRequestURI.parseRequestURI(_rawurl?.__copy__());
                    (@:checkr _req ?? throw "null pointer dereference").uRL = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            if (_justAuthority) {
                (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme = stdgo.Go.str()?.__copy__();
            };
            var __tmp__ = @:check2r _tp.readMIMEHeader(), _mimeHeader:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _req ?? throw "null pointer dereference").header = (_mimeHeader : stdgo._internal.net.http.Http_Header.Header);
            if (((((@:checkr _req ?? throw "null pointer dereference").header[("Host" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)).length) > (1 : stdgo.GoInt) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many Host headers" : stdgo.GoString)) };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _req ?? throw "null pointer dereference").host = (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__();
            if ((@:checkr _req ?? throw "null pointer dereference").host == (stdgo.Go.str())) {
                (@:checkr _req ?? throw "null pointer dereference").host = (@:checkr _req ?? throw "null pointer dereference").header._get(("Host" : stdgo.GoString))?.__copy__();
            };
            stdgo._internal.net.http.Http__fixPragmaCacheControl._fixPragmaCacheControl((@:checkr _req ?? throw "null pointer dereference").header);
            (@:checkr _req ?? throw "null pointer dereference").close = stdgo._internal.net.http.Http__shouldClose._shouldClose((@:checkr _req ?? throw "null pointer dereference").protoMajor, (@:checkr _req ?? throw "null pointer dereference").protoMinor, (@:checkr _req ?? throw "null pointer dereference").header, false);
            _err = stdgo._internal.net.http.Http__readTransfer._readTransfer(stdgo.Go.toInterface(stdgo.Go.asInterface(_req)), _b);
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (@:check2r _req._isH2Upgrade()) {
                (@:checkr _req ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
                (@:checkr _req ?? throw "null pointer dereference").close = true;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : (null : stdgo.Error) };
                    _req = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
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
                return { _0 : _req, _1 : _err };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _req, _1 : _err };
            };
        };
    }
