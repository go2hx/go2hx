package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testOpenFileKeepsPermissions(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _name = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("x" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_create.create(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (_f.close() : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.os.Os_openFile.openFile(_name?.__copy__(), (577 : stdgo.GoInt), (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            _f = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            } else if ((_fi.mode() & (146u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _t.errorf(("f.Stat.Mode after OpenFile is %v, should be writable" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
            };
        };
        {
            var _err = (_f.close() : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_name?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            } else if ((_fi.mode() & (146u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _t.errorf(("Stat after OpenFile is %v, should be writable" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
            };
        };
    }
