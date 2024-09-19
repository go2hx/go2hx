package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testErrPathNUL(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str("_Go_ErrPathNUL", 0)?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _f.close();
                _t.fatal(stdgo.Go.toInterface(("TempFile should have failed" : stdgo.GoString)));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(stdgo.Go.str()?.__copy__(), ("_Go_ErrPathNUL" : stdgo.GoString));
                _f = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("open ErrPathNUL tempfile: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.os.Os_openFile.openFile(_f.name()?.__copy__(), (2 : stdgo.GoInt), (384u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)), _f2:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open ErrPathNUL: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _f2.close();
            {
                var __tmp__ = stdgo._internal.os.Os_openFile.openFile((_f.name() + stdgo.Go.str(0)?.__copy__() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), (384u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                _f2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                _f2.close();
                _t.fatal(stdgo.Go.toInterface(("Open should have failed" : stdgo.GoString)));
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
