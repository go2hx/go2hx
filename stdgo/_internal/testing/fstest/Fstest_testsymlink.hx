package stdgo._internal.testing.fstest;
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_musthavesymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmp = (@:check2r _t.tempDir()?.__copy__() : stdgo.GoString);
        var _tmpfs = (stdgo._internal.os.Os_dirfs.dirFS(_tmp?.__copy__()) : stdgo._internal.io.fs.Fs_fs.FS);
        {
            var _err = (stdgo._internal.os.Os_writefile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello" : stdgo.GoString))?.__copy__(), ((("hello, world\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
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
            var _err = (stdgo._internal.testing.fstest.Fstest_testfs.testFS(_tmpfs, ("hello" : stdgo.GoString), ("hello.link" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
