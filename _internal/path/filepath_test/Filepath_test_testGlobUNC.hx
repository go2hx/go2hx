package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testGlobUNC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.path.filepath.Filepath_glob.glob(("\\\\?\\C:\\*" : stdgo.GoString));
    }
