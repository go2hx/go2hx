package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testWalkSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _internal.path.filepath_test.Filepath_test__testWalkSymlink._testWalkSymlink(_t, stdgo._internal.os.Os_symlink.symlink);
    }
