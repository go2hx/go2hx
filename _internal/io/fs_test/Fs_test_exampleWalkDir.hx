package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function exampleWalkDir():Void {
        var _root = ("/usr/local/go/bin" : stdgo.GoString);
        var _fileSystem = (stdgo._internal.os.Os_dirFS.dirFS(_root?.__copy__()) : stdgo._internal.io.fs.Fs_FS.FS);
        _internal.io.fs_test.Fs_test_fs.fs.walkDir(_fileSystem, ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error):stdgo.Error {
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_path));
            return (null : stdgo.Error);
        });
    }
