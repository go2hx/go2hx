package stdgo._internal.internal.obscuretestdata;
function decodeToTempFile(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _path = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L36"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L37"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                    _path = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.os.Os_createtemp.createTemp((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("obscuretestdata-decoded-" : stdgo.GoString)), _tmp:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L42"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L43"
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _path = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _path = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L45"
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_tmp), stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(_f))), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L46"
                    _tmp.close();
                    //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L47"
                    stdgo._internal.os.Os_remove.remove(_tmp.name()?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L48"
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                            _path = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _path = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L50"
            {
                var _err = (_tmp.close() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L51"
                    stdgo._internal.os.Os_remove.remove(_tmp.name()?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L52"
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                            _path = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _path = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/obscuretestdata/obscuretestdata.go#L54"
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _tmp.name()?.__copy__(), _1 : (null : stdgo.Error) };
                    _path = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _path = __ret__._0;
                _err = __ret__._1;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _path, _1 : _err };
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
                return { _0 : _path, _1 : _err };
            };
        };
    }
