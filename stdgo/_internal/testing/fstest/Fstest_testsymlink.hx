package stdgo._internal.testing.fstest;
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L17"
        stdgo._internal.internal.testenv.Testenv_musthavesymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmp = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _tmpfs = (stdgo._internal.os.Os_dirfs.dirFS(_tmp?.__copy__()) : stdgo._internal.io.fs.Fs_fs.FS);
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L22"
        {
            var _err = (stdgo._internal.os.Os_writefile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello" : stdgo.GoString))?.__copy__(), ((("hello, world\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L23"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L26"
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("hello.link" : stdgo.GoString))?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L27"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L30"
        {
            var _err = (stdgo._internal.testing.fstest.Fstest_testfs.testFS(_tmpfs, ("hello" : stdgo.GoString), ("hello.link" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs_test.go#L31"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
