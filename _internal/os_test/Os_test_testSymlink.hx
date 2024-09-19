package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __0 = ("symlinktestfrom" : stdgo.GoString), __1 = ("symlinktestto" : stdgo.GoString);
var _to = __1, _from = __0;
            var __tmp__ = stdgo._internal.os.Os_create.create(_to?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Create(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            {
                _err = _file.close();
                if (_err != null) {
                    _t.errorf(("Close(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                };
            };
            _err = stdgo._internal.os.Os_symlink.symlink(_to?.__copy__(), _from?.__copy__());
            if (_err != null) {
                _t.fatalf(("Symlink(%q, %q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_to?.__copy__()), _tostat:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Lstat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            if ((_tostat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _t.fatalf(("Lstat(%q).Mode()&ModeSymlink = %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((_tostat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode))));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_from?.__copy__()), _fromstat:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.os.Os_sameFile.sameFile(_tostat, _fromstat)) {
                _t.errorf(("Symlink(%q, %q) did not create symlink" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_from?.__copy__());
                _fromstat = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Lstat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if ((_fromstat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _t.fatalf(("Lstat(%q).Mode()&ModeSymlink = 0, want %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(stdgo.Go.asInterface((134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_from?.__copy__());
                _fromstat = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (_fromstat.name() != (_from)) {
                _t.errorf(("Stat(%q).Name() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_fromstat.name()), stdgo.Go.toInterface(_from));
            };
            if ((_fromstat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _t.fatalf(("Stat(%q).Mode()&ModeSymlink = %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(stdgo.Go.asInterface((_fromstat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode))));
            };
            var __tmp__ = stdgo._internal.os.Os_readlink.readlink(_from?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Readlink(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (_s != (_to)) {
                _t.fatalf(("Readlink(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_to));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_open.open(_from?.__copy__());
                _file = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Open(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            _file.close();
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
