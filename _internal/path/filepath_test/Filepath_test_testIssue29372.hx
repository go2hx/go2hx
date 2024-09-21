package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testIssue29372(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _path = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("file.txt" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_path?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _pathSeparator = ((47 : stdgo.GoInt32) : stdgo.GoString);
        var _tests = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[(_path + stdgo._internal.strings.Strings_repeat.repeat(_pathSeparator?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), (_path + stdgo._internal.strings.Strings_repeat.repeat(_pathSeparator?.__copy__(), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings_repeat.repeat(_pathSeparator?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings_repeat.repeat(_pathSeparator?.__copy__(), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings_repeat.repeat(_pathSeparator?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (".." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings_repeat.repeat(_pathSeparator?.__copy__(), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (".." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _test in _tests) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_test?.__copy__());
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((20 : stdgo._internal.syscall.Syscall_Errno.Errno))))) {
                _t.fatalf(("test#%d: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((20 : stdgo._internal.syscall.Syscall_Errno.Errno))), stdgo.Go.toInterface(_err));
            };
        };
    }
