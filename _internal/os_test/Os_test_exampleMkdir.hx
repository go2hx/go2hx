package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleMkdir():Void {
        var _err = (stdgo._internal.os.Os_mkdir.mkdir(("testdir" : stdgo.GoString), (488u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (((_err != null) && !stdgo._internal.os.Os_isExist.isExist(_err) : Bool)) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.os.Os_writeFile.writeFile(("testdir/testfile.txt" : stdgo.GoString), (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
    }
