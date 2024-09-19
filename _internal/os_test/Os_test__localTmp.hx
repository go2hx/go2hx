package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _localTmp():stdgo.GoString {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString))) {
                return stdgo._internal.os.Os_tempDir.tempDir()?.__copy__();
            };
        };
        return ("/tmp" : stdgo.GoString);
    }
