package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllLongPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = ("js" : stdgo.GoString);
                        if (__value__ == (("aix" : stdgo.GoString)) || __value__ == (("darwin" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("dragonfly" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("linux" : stdgo.GoString)) || __value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString)) || __value__ == (("illumos" : stdgo.GoString)) || __value__ == (("solaris" : stdgo.GoString))) {
                            break;
                            break;
                        } else {
                            _t.skip(stdgo.Go.toInterface(("skipping for not implemented platforms" : stdgo.GoString)));
                        };
                    };
                    break;
                };
            };
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _prevDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not get wd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestRemoveAllLongPath-" : stdgo.GoString)), _startPath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not create TempDir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _startPath;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_startPath?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_startPath), stdgo.Go.toInterface(_err));
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (41 : stdgo.GoInt) : Bool), _i++, {
                    var _name = (stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    _err = stdgo._internal.os.Os_mkdir.mkdir(_name?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                    if (_err != null) {
                        _t.fatalf(("Could not mkdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                    };
                    _err = stdgo._internal.os.Os_chdir.chdir(_name?.__copy__());
                    if (_err != null) {
                        _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                    };
                });
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_prevDir?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_prevDir), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_removeAll.removeAll(_startPath?.__copy__());
            if (_err != null) {
                _t.errorf(("RemoveAll could not remove long file path %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_startPath), stdgo.Go.toInterface(_err));
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
