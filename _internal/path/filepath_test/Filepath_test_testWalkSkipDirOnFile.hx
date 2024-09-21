package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testWalkSkipDirOnFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _td = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir/foo1" : stdgo.GoString))?.__copy__());
        _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir/foo2" : stdgo.GoString))?.__copy__());
        var _sawFoo2 = (false : Bool);
        var _walker = (function(_path:stdgo.GoString):stdgo.Error {
            if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_path?.__copy__(), ("foo2" : stdgo.GoString))) {
                _sawFoo2 = true;
            };
            if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_path?.__copy__(), ("foo1" : stdgo.GoString))) {
                return stdgo._internal.path.filepath.Filepath_skipDir.skipDir;
            };
            return (null : stdgo.Error);
        } : stdgo.GoString -> stdgo.Error);
        var _walkFn = (function(_path:stdgo.GoString, __8:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, __9:stdgo.Error):stdgo.Error {
            return _walker(_path?.__copy__());
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error) -> stdgo.Error);
        var _walkDirFn = (function(_path:stdgo.GoString, __8:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, __9:stdgo.Error):stdgo.Error {
            return _walker(_path?.__copy__());
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_DirEntry.DirEntry, stdgo.Error) -> stdgo.Error);
        var _check = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _walk:stdgo.GoString -> stdgo.Error, _root:stdgo.GoString):Void {
            _t.helper();
            _sawFoo2 = false;
            var _err = (_walk(_root?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_sawFoo2) {
                _t.errorf(("SkipDir on file foo1 did not block processing of foo2" : stdgo.GoString));
            };
        };
        _t.run(("Walk" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var walk = (function(_root:stdgo.GoString):stdgo.Error {
                return stdgo._internal.path.filepath.Filepath_walk.walk(_td?.__copy__(), _walkFn);
            } : stdgo.GoString -> stdgo.Error);
            _check(_t, walk, _td?.__copy__());
            _check(_t, walk, stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__());
        });
        _t.run(("WalkDir" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var walkDir = (function(_root:stdgo.GoString):stdgo.Error {
                return stdgo._internal.path.filepath.Filepath_walkDir.walkDir(_td?.__copy__(), _walkDirFn);
            } : stdgo.GoString -> stdgo.Error);
            _check(_t, walkDir, _td?.__copy__());
            _check(_t, walkDir, stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__());
        });
    }
