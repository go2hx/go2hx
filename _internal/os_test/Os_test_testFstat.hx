package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testFstat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _path = (((_internal.os_test.Os_test__sfdir._sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.os_test.Os_test__sfname._sfname?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                _t.fatal(stdgo.Go.toInterface(("open failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err1));
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = _file.stat(), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 != null) {
                _t.fatal(stdgo.Go.toInterface(("fstat failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err2));
            };
            if (!_internal.os_test.Os_test__equal._equal(_internal.os_test.Os_test__sfname._sfname?.__copy__(), _dir.name()?.__copy__())) {
                _t.error(stdgo.Go.toInterface(("name should be " : stdgo.GoString)), stdgo.Go.toInterface(_internal.os_test.Os_test__sfname._sfname), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.name()));
            };
            var _filesize = (_internal.os_test.Os_test__size._size(_path?.__copy__(), _t) : stdgo.GoInt64);
            if (_dir.size() != (_filesize)) {
                _t.error(stdgo.Go.toInterface(("size should be" : stdgo.GoString)), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.size()));
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
