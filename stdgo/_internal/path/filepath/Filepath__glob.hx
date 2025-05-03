package stdgo._internal.path.filepath;
function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _m = (null : stdgo.Slice<stdgo.GoString>), _e = (null : stdgo.Error);
        try {
            _m = _matches;
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L334"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L335"
                return { _0 : _m, _1 : _e };
            };
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L337"
            if (!_fi.isDir()) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L338"
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L341"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L342"
                return { _0 : _m, _1 : _e };
            };
            {
                final __f__ = _d.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _d.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L347"
            stdgo._internal.sort.Sort_strings.strings(_names);
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L349"
            for (__1 => _n in _names) {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L351"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L352"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _err };
                            _m = __tmp__._0;
                            _e = __tmp__._1;
                            __tmp__;
                        };
                        _m = __ret__._0;
                        _e = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L354"
                if (_matched) {
                    _m = (_m.__append__(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _n?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L358"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _m, _1 : _e };
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
                return { _0 : _m, _1 : _e };
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
                return { _0 : _m, _1 : _e };
            };
        };
    }
