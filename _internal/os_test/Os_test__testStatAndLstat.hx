package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testStatAndLstat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _isLink:Bool, _statCheck:(stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, stdgo.GoString, stdgo._internal.io.fs.Fs_FileInfo.FileInfo) -> Void, _lstatCheck:(stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, stdgo.GoString, stdgo._internal.io.fs.Fs_FileInfo.FileInfo) -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _sfi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            _statCheck(_t, _path?.__copy__(), _sfi);
            var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__()), _lsfi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            _lstatCheck(_t, _path?.__copy__(), _lsfi);
            if (_isLink) {
                if (stdgo._internal.os.Os_sameFile.sameFile(_sfi, _lsfi)) {
                    _t.errorf(("stat and lstat of %q should not be the same" : stdgo.GoString), stdgo.Go.toInterface(_path));
                };
            } else {
                if (!stdgo._internal.os.Os_sameFile.sameFile(_sfi, _lsfi)) {
                    _t.errorf(("stat and lstat of %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_path));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _sfi2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _statCheck(_t, _path?.__copy__(), _sfi2);
            if (!stdgo._internal.os.Os_sameFile.sameFile(_sfi, _sfi2)) {
                _t.errorf(("stat of open %q file and stat of %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_path));
            };
            if (_isLink) {
                if (stdgo._internal.os.Os_sameFile.sameFile(_sfi2, _lsfi)) {
                    _t.errorf(("stat of opened %q file and lstat of %q should not be the same" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_path));
                };
            } else {
                if (!stdgo._internal.os.Os_sameFile.sameFile(_sfi2, _lsfi)) {
                    _t.errorf(("stat of opened %q file and lstat of %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_path));
                };
            };
            if ((((_path.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _parentdir = (stdgo._internal.path.filepath.Filepath_dir.dir(_path?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_open.open(_parentdir?.__copy__()), _parent:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            __deferstack__.unshift(() -> _parent.close());
            var __tmp__ = _parent.readdir((-1 : stdgo.GoInt)), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _lsfi2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
            var _base = (stdgo._internal.path.filepath.Filepath_base.base(_path?.__copy__())?.__copy__() : stdgo.GoString);
            for (__0 => _fi2 in _fis) {
                if (_fi2.name() == (_base)) {
                    _lsfi2 = _fi2;
                    break;
                };
            };
            if (_lsfi2 == null) {
                _t.errorf(("failed to find %q in its parent" : stdgo.GoString), stdgo.Go.toInterface(_path));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _lstatCheck(_t, _path?.__copy__(), _lsfi2);
            if (!stdgo._internal.os.Os_sameFile.sameFile(_lsfi, _lsfi2)) {
                _t.errorf(("lstat of %q file in %q directory and %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_lsfi2.name()), stdgo.Go.toInterface(_parentdir), stdgo.Go.toInterface(_path));
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
