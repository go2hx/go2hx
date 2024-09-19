package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleFileMode():Void {
        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(("some-filename" : stdgo.GoString)), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("permissions: %#o\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode().perm())));
        {
            var _mode = (_fi.mode() : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            if (_mode.isRegular()) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("regular file" : stdgo.GoString)));
            } else if (_mode.isDir()) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("directory" : stdgo.GoString)));
            } else if ((_mode & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("symbolic link" : stdgo.GoString)));
            } else if ((_mode & (33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("named pipe" : stdgo.GoString)));
            };
        };
    }
