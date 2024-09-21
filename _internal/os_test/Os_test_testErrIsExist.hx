package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testErrIsExist(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(stdgo.Go.str()?.__copy__(), ("_Go_ErrIsExist" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open ErrIsExist tempfile: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.os.Os_openFile.openFile(_f.name()?.__copy__(), (194 : stdgo.GoInt), (384u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)), _f2:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _f2.close();
                _t.fatal(stdgo.Go.toInterface(("Open should have failed" : stdgo.GoString)));
            };
            {
                var _s = (_internal.os_test.Os_test__checkErrorPredicate._checkErrorPredicate(("os.IsExist" : stdgo.GoString), stdgo._internal.os.Os_isExist.isExist, _err, stdgo._internal.io.fs.Fs_errExist.errExist)?.__copy__() : stdgo.GoString);
                if (_s != (stdgo.Go.str())) {
                    _t.fatal(stdgo.Go.toInterface(_s));
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
