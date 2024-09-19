package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function _strip(_s:stdgo.GoString):stdgo.GoString {
        var _replaced = (stdgo._internal.strings.Strings_replaceAll.replaceAll(_s?.__copy__(), ("\n\t\t" : stdgo.GoString), ("\n" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if ((((_replaced.length) > (0 : stdgo.GoInt) : Bool) && (_replaced[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _replaced = (_replaced.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _replaced?.__copy__();
    }
