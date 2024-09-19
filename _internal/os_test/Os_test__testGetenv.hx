package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testGetenv(_s:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _s;
            if (__value__ == (("*" : stdgo.GoString))) {
                return ("all the args" : stdgo.GoString);
            } else if (__value__ == (("#" : stdgo.GoString))) {
                return ("NARGS" : stdgo.GoString);
            } else if (__value__ == (("$" : stdgo.GoString))) {
                return ("PID" : stdgo.GoString);
            } else if (__value__ == (("1" : stdgo.GoString))) {
                return ("ARGUMENT1" : stdgo.GoString);
            } else if (__value__ == (("HOME" : stdgo.GoString))) {
                return ("/usr/gopher" : stdgo.GoString);
            } else if (__value__ == (("H" : stdgo.GoString))) {
                return ("(Value of H)" : stdgo.GoString);
            } else if (__value__ == (("home_1" : stdgo.GoString))) {
                return ("/usr/foo" : stdgo.GoString);
            } else if (__value__ == (("_" : stdgo.GoString))) {
                return ("underscore" : stdgo.GoString);
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
