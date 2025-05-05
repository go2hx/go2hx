package stdgo._internal.internal.fuzz;
function _sharedMemTempFile(_size:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _m = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>), _err = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.os.Os_createtemp.createTemp((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("fuzz-*" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L69"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L70"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L73"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L74"
                            _f.close();
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L75"
                            stdgo._internal.os.Os_remove.remove(_f.name()?.__copy__());
                        };
                    };
                    a();
                }) });
            };
            var _totalSize = (stdgo._internal.internal.fuzz.Fuzz__sharedmemsize._sharedMemSize(_size) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L81"
            {
                var _err = (_f.truncate((_totalSize : stdgo.GoInt64)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L82"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _m = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _m = __ret__._0;
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
            var _removeOnClose = (true : Bool);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L87"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = stdgo._internal.internal.fuzz.Fuzz__sharedmemmapfile._sharedMemMapFile(_f, _totalSize, _removeOnClose);
                _m = __ret__._0;
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
                return { _0 : _m, _1 : _err };
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
                return { _0 : _m, _1 : _err };
            };
        };
    }
