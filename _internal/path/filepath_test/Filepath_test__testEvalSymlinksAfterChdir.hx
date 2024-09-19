package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _testEvalSymlinksAfterChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _wd:stdgo.GoString, _path:stdgo.GoString, _want:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _err = (stdgo._internal.os.Os_chdir.chdir(_cwd?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
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
                };
                a();
            });
            _err = stdgo._internal.os.Os_chdir.chdir(_wd?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_path?.__copy__()), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) in %q directory error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_wd), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (stdgo._internal.path.filepath.Filepath_clean.clean(_have?.__copy__()) != (stdgo._internal.path.filepath.Filepath_clean.clean(_want?.__copy__()))) {
                _t.errorf(("EvalSymlinks(%q) in %q directory returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_wd), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
            };
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
