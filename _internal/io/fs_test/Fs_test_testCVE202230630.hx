package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testCVE202230630(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo._internal.os.Os_dirFS.dirFS(("." : stdgo.GoString)), (("/*" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("/" : stdgo.GoString), (10001 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.path.Path_errBadPattern.errBadPattern))) {
            _t.fatalf(("Glob returned err=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.path.Path_errBadPattern.errBadPattern));
        };
    }
