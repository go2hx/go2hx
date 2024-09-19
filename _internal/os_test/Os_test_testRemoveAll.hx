package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_removeAll.removeAll(stdgo.Go.str()?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.errorf(("RemoveAll(\"\"): %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _file = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _path = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("_TestRemoveAll_" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _fpath = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _dpath = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), ("dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_create.create(_file?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            _err = stdgo._internal.os.Os_removeAll.removeAll(_file?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q (first): %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_file?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (first)" : stdgo.GoString), stdgo.Go.toInterface(_file));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.os.Os_create.create(_fpath?.__copy__());
            _fd = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            _err = stdgo._internal.os.Os_removeAll.removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q (second): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (second)" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
        {
            _err = stdgo._internal.os.Os_mkdirAll.mkdirAll(_dpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dpath), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.os.Os_create.create(_fpath?.__copy__());
            _fd = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            var __tmp__ = stdgo._internal.os.Os_create.create((_dpath + ("/file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            _fd = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            _err = stdgo._internal.os.Os_removeAll.removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q (third): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__()), __16:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (third)" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
        if ((true && (stdgo._internal.os.Os_getuid.getuid() != (0 : stdgo.GoInt)) : Bool)) {
            {
                _err = stdgo._internal.os.Os_mkdirAll.mkdirAll(_dpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                if (_err != null) {
                    _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dpath), stdgo.Go.toInterface(_err));
                };
            };
            for (__17 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[_fpath?.__copy__(), (_dpath + ("/file1" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_path + ("/zzz" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                {
                    var __tmp__ = stdgo._internal.os.Os_create.create(_s?.__copy__());
                    _fd = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                };
                _fd.close();
            };
            {
                _err = stdgo._internal.os.Os_chmod.chmod(_dpath?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                if (_err != null) {
                    _t.fatalf(("Chmod %q 0: %s" : stdgo.GoString), stdgo.Go.toInterface(_dpath), stdgo.Go.toInterface(_err));
                };
            };
            stdgo._internal.os.Os_removeAll.removeAll(_path?.__copy__());
            stdgo._internal.os.Os_chmod.chmod(_dpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            for (__18 => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_fpath?.__copy__(), (_path + ("/zzz" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                {
                    {
                        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_s?.__copy__());
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        _t.fatalf(("Lstat %q succeeded after partial RemoveAll" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                };
            };
        };
        {
            _err = stdgo._internal.os.Os_removeAll.removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q after partial RemoveAll: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (final)" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
    }
