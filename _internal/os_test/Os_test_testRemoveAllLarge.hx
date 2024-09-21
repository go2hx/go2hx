package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        _t.parallel();
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _path = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("_TestRemoveAllLarge_" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _fpath = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s/file%d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_i))?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os_create.create(_fpath?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
                };
                _fd.close();
            });
        };
        {
            var _err = (stdgo._internal.os.Os_removeAll.removeAll(_path?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("RemoveAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__()), __16:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
    }
