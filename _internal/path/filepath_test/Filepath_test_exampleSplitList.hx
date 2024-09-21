package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleSplitList():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_splitList.splitList(("/a/b/c:/usr/bin" : stdgo.GoString))));
    }
