package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleReadDir():Void {
        var __tmp__ = stdgo._internal.os.Os_readDir.readDir(("." : stdgo.GoString)), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        for (__0 => _file in _files) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_file.name()));
        };
    }
