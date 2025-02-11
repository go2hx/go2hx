package stdgo._internal.internal.fuzz;
function _sharedMemTempFile(_size:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _m = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>), _err = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.os.Os_createtemp.createTemp((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("fuzz-*" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (_err != null) {
                            @:check2r _f.close();
                            stdgo._internal.os.Os_remove.remove(@:check2r _f.name()?.__copy__());
                        };
                    };
                    a();
                }) });
            };
            var _totalSize = (stdgo._internal.internal.fuzz.Fuzz__sharedmemsize._sharedMemSize(_size) : stdgo.GoInt);
            {
                var _err = (@:check2r _f.truncate((_totalSize : stdgo.GoInt64)) : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _m = __tmp__._0;
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
            var _removeOnClose = (true : Bool);
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>; var _1 : stdgo.Error; } = {
                    final __tmp__ = stdgo._internal.internal.fuzz.Fuzz__sharedmemmapfile._sharedMemMapFile(_f, _totalSize, _removeOnClose);
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _m, _1 : _err };
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
                return { _0 : _m, _1 : _err };
            };
        };
    }
