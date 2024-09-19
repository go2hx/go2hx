package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testAbsEmptyString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("getwd failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_root?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chdir.chdir(_a0?.__copy__()));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_root), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(stdgo.Go.str()?.__copy__()), _abspath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Abs(\"\") error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_abspath?.__copy__()), _absinfo:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || !stdgo._internal.os.Os_sameFile.sameFile(_absinfo, _info) : Bool)) {
                _t.errorf(("Abs(\"\")=%q, not the same file" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            if (!stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_abspath?.__copy__())) {
                _t.errorf(("Abs(\"\")=%q, not an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            if ((stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_abspath?.__copy__()) && (_abspath != stdgo._internal.path.filepath.Filepath_clean.clean(_abspath?.__copy__())) : Bool)) {
                _t.errorf(("Abs(\"\")=%q, isn\'t clean" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
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
