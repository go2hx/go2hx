package stdgo._internal.debug.buildinfo;
function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _info = (null : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>), _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _pathErr = (null : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>);
                            if (stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_pathErr) : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>>)))) {
                                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("could not read Go build info: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            } else if (_err != null) {
                                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("could not read Go build info from %s: %w" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                            };
                        };
                    };
                    a();
                }) });
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _info = __tmp__._0;
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
            {
                final __f__ = @:check2r _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>; var _1 : stdgo.Error; } = {
                    final __tmp__ = stdgo._internal.debug.buildinfo.Buildinfo_read.read(stdgo.Go.asInterface(_f));
                    _info = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _info, _1 : _err };
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
                return { _0 : _info, _1 : _err };
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
                return { _0 : _info, _1 : _err };
            };
        };
    }
