package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testDirFS(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        if (false) {
            {
                var _err = (stdgo._internal.path.filepath.Filepath_walkDir.walkDir(("./testdata/dirfs" : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = _d.info(), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _stat:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    if (stdgo.Go.toInterface(_stat.modTime()) == stdgo.Go.toInterface(_info.modTime())) {
                        return (null : stdgo.Error);
                    };
                    {
                        var _err = (stdgo._internal.os.Os_chtimes.chtimes(_path?.__copy__(), _stat.modTime()?.__copy__(), _stat.modTime()?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            _t.log(stdgo.Go.toInterface(_err));
                        };
                    };
                    return (null : stdgo.Error);
                }) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
        };
        var _fsys = (stdgo._internal.os.Os_dirFS.dirFS(("./testdata/dirfs" : stdgo.GoString)) : stdgo._internal.io.fs.Fs_FS.FS);
        {
            var _err = (stdgo._internal.testing.fstest.Fstest_testFS.testFS(_fsys, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir/x" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS)) : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS), _1 : false };
        }, _rdfs = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.error(stdgo.Go.toInterface(("expected DirFS result to implement fs.ReadDirFS" : stdgo.GoString)));
        };
        {
            var __tmp__ = _rdfs.readDir(("nonexistent" : stdgo.GoString)), __8:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("fs.ReadDir of nonexistent directory succeeded" : stdgo.GoString)));
            };
        };
        {};
        var __tmp__ = _fsys.open(("dir/nonesuch" : stdgo.GoString)), __9:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("fs.Open of nonexistent file succeeded" : stdgo.GoString)));
        } else {
            if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("dir/nonesuch" : stdgo.GoString))) {
                _t.errorf(("error %q does not contain %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("dir/nonesuch" : stdgo.GoString)));
            };
            if (stdgo._internal.strings.Strings_contains.contains((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>).path?.__copy__(), ("testdata" : stdgo.GoString))) {
                _t.errorf(("error %q contains %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("testdata" : stdgo.GoString)));
            };
        };
        var _d = (stdgo._internal.os.Os_dirFS.dirFS(("." : stdgo.GoString)) : stdgo._internal.io.fs.Fs_FS.FS);
        {
            var __tmp__ = _d.open(("testdata\\dirfs" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatalf(("Open testdata\\dirfs succeeded" : stdgo.GoString));
        };
        {
            var __tmp__ = _d.open(("NUL" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.errorf(("Open NUL succeeded" : stdgo.GoString));
        };
    }
