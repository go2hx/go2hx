package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        var _i = (stdgo._internal.strings.Strings__indexFunc._indexFunc(_s?.__copy__(), _f, false) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
    }
