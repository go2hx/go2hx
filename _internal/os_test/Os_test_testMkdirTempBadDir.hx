package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMkdirTempBadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("MkdirTempBadDir" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _badDir = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("not-exist" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(_badDir?.__copy__(), ("foo" : stdgo.GoString));
                _err = __tmp__._1;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                }, _pe = __tmp__._0, _ok = __tmp__._1;
                if (((!_ok || !stdgo._internal.os.Os_isNotExist.isNotExist(_err) : Bool) || (_pe.path != _badDir) : Bool)) {
                    _t.errorf(("TempDir error = %#v; want PathError for path %q satisfying IsNotExist" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_badDir));
                };
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
