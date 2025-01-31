package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmp = (@:check2r _t.tempDir()?.__copy__() : stdgo.GoString);
        var _tmpfs = (stdgo._internal.os.Os_dirFS.dirFS(_tmp?.__copy__()) : stdgo._internal.io.fs.Fs_FS.FS);
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello" : stdgo.GoString))?.__copy__(), (("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello.link" : stdgo.GoString))?.__copy__()) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.testing.fstest.Fstest_testFS.testFS(_tmpfs, ("hello" : stdgo.GoString), ("hello.link" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
