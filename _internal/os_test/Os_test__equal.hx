package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _equal(_name1:stdgo.GoString, _name2:stdgo.GoString):Bool {
        var _r = false;
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("windows" : stdgo.GoString))) {
                _r = stdgo._internal.strings.Strings_toLower.toLower(_name1?.__copy__()) == (stdgo._internal.strings.Strings_toLower.toLower(_name2?.__copy__()));
            } else {
                _r = _name1 == (_name2);
            };
        };
        return _r;
    }
