package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStatError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var _path = ("no-such-file" : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("got nil, want error" : stdgo.GoString)));
            };
            if (_fi != null) {
                _t.errorf(("got %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_fi));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                }, _perr = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("got %T, want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
                };
            };
            stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
            var _link = ("symlink" : stdgo.GoString);
            _err = stdgo._internal.os.Os_symlink.symlink(_path?.__copy__(), _link?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_link?.__copy__());
                _fi = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("got nil, want error" : stdgo.GoString)));
            };
            if (_fi != null) {
                _t.errorf(("got %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_fi));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                }, _perr = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("got %T, want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
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
