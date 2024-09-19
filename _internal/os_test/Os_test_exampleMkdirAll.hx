package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleMkdirAll():Void {
        var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(("test/subdir" : stdgo.GoString), (488u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.os.Os_writeFile.writeFile(("test/subdir/testfile.txt" : stdgo.GoString), (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
    }
