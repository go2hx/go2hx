package stdgo._internal.net.smtp;
function sendMail(_addr:stdgo.GoString, _a:stdgo._internal.net.smtp.Smtp_Auth.Auth, _from:stdgo.GoString, _to:stdgo.Slice<stdgo.GoString>, _msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _err = (stdgo._internal.net.smtp.Smtp__validateLine._validateLine(_from?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            for (__0 => _recp in _to) {
                {
                    var _err = (stdgo._internal.net.smtp.Smtp__validateLine._validateLine(_recp?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            var __tmp__ = stdgo._internal.net.smtp.Smtp_dial.dial(_addr?.__copy__()), _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __f__ = @:check2r _c.close;
                __deferstack__.unshift(() -> __f__());
            };
            {
                _err = @:check2r _c._hello();
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = @:check2r _c.extension(("STARTTLS" : stdgo.GoString)), _ok:Bool = __tmp__._0, __1:stdgo.GoString = __tmp__._1;
                if (_ok) {
                    var _config = (stdgo.Go.setRef(({ serverName : (@:checkr _c ?? throw "null pointer dereference")._serverName?.__copy__() } : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
                    if (stdgo._internal.net.smtp.Smtp__testHookStartTLS._testHookStartTLS != null) {
                        stdgo._internal.net.smtp.Smtp__testHookStartTLS._testHookStartTLS(_config);
                    };
                    {
                        _err = @:check2r _c.startTLS(_config);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    __deferstack__.remove(defer);
                                    defer();
                                };
                                return _err;
                            };
                        };
                    };
                };
            };
            if (((_a != null) && ((@:checkr _c ?? throw "null pointer dereference")._ext != null) : Bool)) {
                {
                    var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._ext != null && (@:checkr _c ?? throw "null pointer dereference")._ext.exists(("AUTH" : stdgo.GoString)) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._ext[("AUTH" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __2:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("smtp: server doesn\'t support AUTH" : stdgo.GoString));
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                {
                    _err = @:check2r _c.auth(_a);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return _err;
                        };
                    };
                };
            };
            {
                _err = @:check2r _c.mail(_from?.__copy__());
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return _err;
                    };
                };
            };
            for (__2 => _addr in _to) {
                {
                    _err = @:check2r _c.rcpt(_addr?.__copy__());
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return _err;
                        };
                    };
                };
            };
            var __tmp__ = @:check2r _c.data(), _w:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return _err;
                };
            };
            {
                var __tmp__ = _w.write(_msg);
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return _err;
                };
            };
            _err = _w.close();
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return _err;
                };
            };
            {
                final __ret__:stdgo.Error = @:check2r _c.quit();
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
