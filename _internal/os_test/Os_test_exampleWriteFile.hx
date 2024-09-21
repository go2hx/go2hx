package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleWriteFile():Void {
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(("testdata/hello" : stdgo.GoString), (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
    }
