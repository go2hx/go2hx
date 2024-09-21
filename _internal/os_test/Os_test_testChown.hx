package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testChown(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("file ownership not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            var _f = _internal.os_test.Os_test__newFile._newFile(("TestChown" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
            };
            var _gid = (stdgo._internal.os.Os_getgid.getgid() : stdgo.GoInt);
            _t.log(stdgo.Go.toInterface(("gid:" : stdgo.GoString)), stdgo.Go.toInterface(_gid));
            {
                _err = stdgo._internal.os.Os_chown.chown(_f.name()?.__copy__(), (-1 : stdgo.GoInt), _gid);
                if (_err != null) {
                    _t.fatalf(("chown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                };
            };
            var _sys = (stdgo.Go.typeAssert((_dir.sys() : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>)) : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
            _internal.os_test.Os_test__checkUidGid._checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
            var __tmp__ = stdgo._internal.os.Os_getgroups.getgroups(), _groups:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("getgroups: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _t.log(stdgo.Go.toInterface(("groups: " : stdgo.GoString)), stdgo.Go.toInterface(_groups));
            for (__24 => _g in _groups) {
                {
                    _err = stdgo._internal.os.Os_chown.chown(_f.name()?.__copy__(), (-1 : stdgo.GoInt), _g);
                    if (_err != null) {
                        _t.fatalf(("chown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_err));
                    };
                };
                _internal.os_test.Os_test__checkUidGid._checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _g);
                {
                    _err = _f.chown((-1 : stdgo.GoInt), _gid);
                    if (_err != null) {
                        _t.fatalf(("fchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                    };
                };
                _internal.os_test.Os_test__checkUidGid._checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
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
