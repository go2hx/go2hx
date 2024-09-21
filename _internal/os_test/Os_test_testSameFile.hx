package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testSameFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __tmp__ = stdgo._internal.os.Os_create.create(("a" : stdgo.GoString)), _fa:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Create(a): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _fa.close();
            var __tmp__ = stdgo._internal.os.Os_create.create(("b" : stdgo.GoString)), _fb:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Create(b): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _fb.close();
            var __tmp__ = stdgo._internal.os.Os_stat.stat(("a" : stdgo.GoString)), _ia1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(a): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(("a" : stdgo.GoString)), _ia2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(a): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.os.Os_sameFile.sameFile(_ia1, _ia2)) {
                _t.errorf(("files should be same" : stdgo.GoString));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(("b" : stdgo.GoString)), _ib:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(b): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (stdgo._internal.os.Os_sameFile.sameFile(_ia1, _ib)) {
                _t.errorf(("files should be different" : stdgo.GoString));
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
