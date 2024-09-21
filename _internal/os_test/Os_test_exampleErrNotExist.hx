package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleErrNotExist():Void {
        var _filename = ("a-nonexistent-file" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_filename?.__copy__()), __0:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("file does not exist" : stdgo.GoString)));
            };
        };
    }
