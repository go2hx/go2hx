package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllDotDot(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _tempDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _subdir = (stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), ("x" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _subsubdir = (stdgo._internal.path.filepath.Filepath_join.join(_subdir?.__copy__(), ("y" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_subsubdir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_removeAll.removeAll(stdgo._internal.path.filepath.Filepath_join.join(_subsubdir?.__copy__(), (".." : stdgo.GoString))?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        for (__16 => _dir in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_subsubdir?.__copy__(), _subdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), __17:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("%s: exists after RemoveAll" : stdgo.GoString), stdgo.Go.toInterface(_dir));
                };
            };
        };
    }
