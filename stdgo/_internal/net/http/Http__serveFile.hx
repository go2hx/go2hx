package stdgo._internal.net.http;
function _serveFile(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _fs:stdgo._internal.net.http.Http_FileSystem.FileSystem, _name:stdgo.GoString, _redirect:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_r.url.path?.__copy__(), ("/index.html" : stdgo.GoString))) {
                stdgo._internal.net.http.Http__localRedirect._localRedirect(_w, _r, ("./" : stdgo.GoString));
                return;
            };
            var __tmp__ = _fs.open(_name?.__copy__()), _f:stdgo._internal.net.http.Http_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var __tmp__ = stdgo._internal.net.http.Http__toHTTPError._toHTTPError(_err), _msg:stdgo.GoString = __tmp__._0, _code:stdgo.GoInt = __tmp__._1;
                stdgo._internal.net.http.Http_error.error(_w, _msg?.__copy__(), _code);
                return;
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _d:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var __tmp__ = stdgo._internal.net.http.Http__toHTTPError._toHTTPError(_err), _msg:stdgo.GoString = __tmp__._0, _code:stdgo.GoInt = __tmp__._1;
                stdgo._internal.net.http.Http_error.error(_w, _msg?.__copy__(), _code);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_redirect) {
                var _url = (_r.url.path?.__copy__() : stdgo.GoString);
                if (_d.isDir()) {
                    if (_url[((_url.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
                        stdgo._internal.net.http.Http__localRedirect._localRedirect(_w, _r, (stdgo._internal.path.Path_base.base(_url?.__copy__()) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                } else {
                    if (_url[((_url.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                        stdgo._internal.net.http.Http__localRedirect._localRedirect(_w, _r, (("../" : stdgo.GoString) + stdgo._internal.path.Path_base.base(_url?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                };
            };
            if (_d.isDir()) {
                var _url = (_r.url.path?.__copy__() : stdgo.GoString);
                if (((_url == stdgo.Go.str()) || (_url[((_url.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                    stdgo._internal.net.http.Http__localRedirect._localRedirect(_w, _r, (stdgo._internal.path.Path_base.base(_url?.__copy__()) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                var _index = ((stdgo._internal.strings.Strings_trimSuffix.trimSuffix(_name?.__copy__(), ("/" : stdgo.GoString)) + ("/index.html" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var __tmp__ = _fs.open(_index?.__copy__()), _ff:stdgo._internal.net.http.Http_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    __deferstack__.unshift(() -> _ff.close());
                    var __tmp__ = _ff.stat(), _dd:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        _d = _dd;
                        _f = _ff;
                    };
                };
            };
            if (_d.isDir()) {
                if (stdgo._internal.net.http.Http__checkIfModifiedSince._checkIfModifiedSince(_r, _d.modTime()?.__copy__()) == ((2 : stdgo._internal.net.http.Http_T_condResult.T_condResult))) {
                    stdgo._internal.net.http.Http__writeNotModified._writeNotModified(_w);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                stdgo._internal.net.http.Http__setLastModified._setLastModified(_w, _d.modTime()?.__copy__());
                stdgo._internal.net.http.Http__dirList._dirList(_w, _r, _f);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _sizeFunc = (function():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
                return { _0 : _d.size(), _1 : (null : stdgo.Error) };
            } : () -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; });
            stdgo._internal.net.http.Http__serveContent._serveContent(_w, _r, _d.name()?.__copy__(), _d.modTime()?.__copy__(), _sizeFunc, _f);
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
