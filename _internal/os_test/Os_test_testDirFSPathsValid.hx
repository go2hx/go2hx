package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testDirFSPathsValid(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skipf(("skipping on Windows" : stdgo.GoString));
        };
        _t.parallel();
        var _d = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_d?.__copy__(), ("control.txt" : stdgo.GoString))?.__copy__(), ((("Hello, world!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_d?.__copy__(), ("e:xperi\\ment.txt" : stdgo.GoString))?.__copy__(), ((("Hello, colon and backslash!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _fsys = (stdgo._internal.os.Os_dirFS.dirFS(_d?.__copy__()) : stdgo._internal.io.fs.Fs_FS.FS);
        var _err = (stdgo._internal.io.fs.Fs_walkDir.walkDir(_fsys, ("." : stdgo.GoString), function(_path:stdgo.GoString, _e:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error):stdgo.Error {
            if (stdgo._internal.io.fs.Fs_validPath.validPath(_e.name()?.__copy__())) {
                _t.logf(("%q ok" : stdgo.GoString), stdgo.Go.toInterface(_e.name()));
            } else {
                _t.errorf(("%q INVALID" : stdgo.GoString), stdgo.Go.toInterface(_e.name()));
            };
            return (null : stdgo.Error);
        }) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
